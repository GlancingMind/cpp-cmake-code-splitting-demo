cmake_minimum_required(VERSION 3.5)
project(CppDemo)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wall -Wextra -Wpedantic)
endif()

add_executable(greeter)

if((EXISTS "${CMAKE_CURRENT_LIST_DIR}/src") AND (IS_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/src"))
    add_subdirectory(src)
endif()

if((EXISTS "${CMAKE_CURRENT_LIST_DIR}/user-code") AND (IS_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/user-code"))
    add_subdirectory(user-code)
endif()
