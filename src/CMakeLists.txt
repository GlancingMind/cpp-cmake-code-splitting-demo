message("Adding src subdirectory")

target_include_directories(greeter 
    PUBLIC "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/include>")

target_sources(greeter PRIVATE "${CMAKE_CURRENT_LIST_DIR}/greeter.cpp")
