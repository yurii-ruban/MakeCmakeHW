cmake_minimum_required(VERSION 2.8)
project(crypto_lib)

set(SOURCES crypto.cpp)
set(INCLUDES ../includes/test.h)

add_library(crypto SHARED "${SOURCES}")

install(TARGETS crypto DESTINATION lib)
install(FILES ${INCLUDES} DESTINATION include)