#include "Person.h"
#include <iostream>

Person::Person() {
    m_age = 0;
}

Person::~Person() {

}

void Person::showInfomation() const{
    std::cout<<"name:"<<m_name<<",age:"<<m_age<<std::endl;
}