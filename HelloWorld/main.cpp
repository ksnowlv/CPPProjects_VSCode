
#include <iostream>
#include <memory>
#include <string>
#include "Person.h"
#include "AtomicTest.h"
#include "ProcessTest.h"

using namespace std;

int main(int argc, char *argv[])
{
    std::cout << "Hello world!" << std::endl;
    
    int age = 10;
    std::cout<<age<<std::endl;
    
    std::string name = "ksnowlv";
    std::cout<<"name="<<name<<std::endl;

    std::unique_ptr<Person> person(std::make_unique<Person>());
    person->setAge(20);
    person->setName("ksnowlv");
    person->showInfomation();

    unique_ptr<AtomicTest> atomicTest(make_unique<AtomicTest>());
    atomicTest->testAtomicInt64();
    atomicTest->testAtomicIntFlag();

    unique_ptr<ProcessTest> processTest(make_unique<ProcessTest>());
    processTest->testProcess();


}
