#include "PersonTest.h"
#include "Person.h"
#include <iostream>

PersonTest::PersonTest() {

}

PersonTest::~PersonTest() {

}

void PersonTest::Test() {
    cout<<"---"<<__func__<<endl;
    std::unique_ptr<Person> person(make_unique<Person>());
    person->SetAge(20);
    person->SetName("ksnowlv");
    person->ShowInfomation();
}