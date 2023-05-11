cmake_minimum_required(VERSION 3.22)
project(CppDemo)

if((EXISTS "${CMAKE_CURRENT_LIST_DIR}/src") AND (IS_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/src"))
    add_subdirectory(src)
endif()

if((EXISTS "${CMAKE_CURRENT_LIST_DIR}/user-code") AND (IS_DIRECTORY "${CMAKE_CURRENT_LIST_DIR}/user-code"))
    add_subdirectory(user-code)
endif()
