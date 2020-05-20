cmake_minimum_required(VERSION 2.8)
project(decoder_project)

set(SOURCES main.cpp)

add_subdirectory(sources)

add_executable(decoder ${SOURCES})
target_link_libraries(decoder crypto)
install(TARGETS decoder DESTINATION bin)