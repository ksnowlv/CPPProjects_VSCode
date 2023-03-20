#ifndef D9FDDF7B_00D1_4C84_AC26_34B2CB22D311
#define D9FDDF7B_00D1_4C84_AC26_34B2CB22D311


class ProcessTest {

public:
    ProcessTest() = default;
    ~ProcessTest() = default;

public:
    void testProcess();

private:
    void processCreate();

    void signalTest();
    static void ouch(const int sig);
    
    void alarmTest();
    static void alarmCallBack(const int sig);
    
    void sharedMemoryTest();

    void messageQueueTest();

private:
    static int s_AlarmFired;

};

#endif /* D9FDDF7B_00D1_4C84_AC26_34B2CB22D311 */
