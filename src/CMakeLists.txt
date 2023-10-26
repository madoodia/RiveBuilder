

cmake_minimum_required(VERSION 3.16)

message("Build Type: ${CMAKE_BUILD_TYPE}")

set(PROJECT_SOURCES
    test.h
    test.cpp
)
add_library(${PROJECT_NAME} SHARED ${PROJECT_SOURCES})
target_compile_definitions(${PROJECT_NAME} PRIVATE RIVEBUILDER_LIBRARY)