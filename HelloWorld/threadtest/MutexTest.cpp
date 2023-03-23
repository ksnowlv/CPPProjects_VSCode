#include "MutexTest.h"
#include <chrono>
#include <mutex>
#include <thread>
#include <iostream>

using namespace std;

MutexTest::MutexTest() {
    m_Count = 0;
}

MutexTest::~MutexTest() {

}


void MutexTest::Test() {
    TestMutex();
    TestRecursiveMutex();
    TestTimeMutex();
}

void MutexTest::TestMutex() {
    std::thread t1(MutexTest::CalCount, ref(*this), 1);
    std::thread t2(MutexTest::CalCount, ref(*this), 2);

    t1.join();
    t2.join();
}

void MutexTest::CalCount(MutexTest& t, const int threadid) {

    for (int i = 0; i < 5; ++i) {
        unique_lock<mutex> lock(t.m_Lock);
        t.m_Count++;
        cout<<"threadid:"<<threadid<<",count:"<<t.m_Count<<endl;
        this_thread::sleep_for(chrono::seconds(1));
    }
}

void MutexTest::TestRecursiveMutex(){
    m_RecursiveMutex.lock();
    m_Text += "1";
    cout<<"TestRecursiveMutex:"<<m_Text<<endl;
    m_RecursiveMutex.lock();
    m_Text += ",2";
    cout<<"TestRecursiveMutex:"<<m_Text<<endl;
    m_RecursiveMutex.unlock();
    m_RecursiveMutex.unlock();
}

void MutexTest::TestTimeMutex() {
    std::thread t1(MutexTest::TimeMutextTask, ref(*this), 1);
    std::thread t2(MutexTest::TimeMutextTask, ref(*this), 2);
    std::thread t3(MutexTest::TimeMutextTask, ref(*this), 3);

    t1.join();
    t2.join();
    t3.join();
}

void MutexTest::TimeMutextTask(MutexTest& t, const int threadid) {

    for (int i = 0; i < 5; ++i) {
        if (t.m_TimeMutex.try_lock_for(::chrono::microseconds(100))){
            cout<<"threadid:"<<threadid<< ",lock success"<<endl;
            std::this_thread::sleep_for(::chrono::microseconds(100));
            t.m_TimeMutex.unlock();
        }else{
            cout<<"threadid:"<<threadid<<",lock fail"<<endl;
        }
        std::this_thread::sleep_for(::chrono::microseconds(100));
    }
}

/*
由于它们额外的复杂性，读/写锁std::shared_mutex ， std::shared_timed_mutex优于普通锁std::mutex，std::timed_mutex的情况比较少见。但是理论上确实存在。

如果在频繁但短暂的读取操作场景，读/写互斥不会提高性能。它更适合于读取操作频繁且耗时的场景。当读操作只是在内存数据结构中查找时，很可能简单的锁会胜过读/写锁。

如果读取操作的开销非常大，并且您可以并行处理许多操作，那么在某些时候增加读写比率应该会导致读取/写入器性能优于排他锁的情况。断点在哪里取决于实际工作量。

*/
