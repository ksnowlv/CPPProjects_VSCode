

cmake_minimum_required(VERSION 3.0) #cmake最低版本需求，不加入此行会受到警告信息

project(HELLOWORLD VERSION 1.0.0) #HELLO 项目名称 1.0.0 工程版本号 LANGUAGE CXX为C++

# 使用C++ 14 标准
set(CMAKE_CXX_STANDARD 14)

#include_directories(${INC_LIST})
#include_directories(${PROJECT_SOURCE_DIR}/inc)
include_directories(
    inc#上层头文件
    ${PROCESS_TEST_INC_DIR}
    processtest/inc
    stltest
    threadtest
)

MESSAGE(STATUS "root cmakelist.txt processtest头文件路径 :${PROCESS_TEST_INC_DIR}")

#把当前目录(.)下所有源代码文件和头文件加入变量SRC_LIST
aux_source_directory(./src SRC_LIST)
aux_source_directory(.  SRC_LIST)
aux_source_directory(./stltest  SRC_LIST)
aux_source_directory(./threadtest  SRC_LIST)
#生成应用程序 helloworld
add_executable(${PROJECT_NAME} ${SRC_LIST} ) 

#target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/inc)
#include_directories(${PROJECT_SOURCE_DIR}/inc)与target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/inc)效果相同
 
#设置编译时依赖的静态库

target_link_libraries(${PROJECT_NAME}
    processtest #
)

#调用subfunc子目录中的CMakeLists.txt，生成静态库而不生成新目标，目标与主CMakeLists.txt中设定的一致
add_subdirectory(processtest)