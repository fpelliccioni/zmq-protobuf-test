project(MyHello)
cmake_minimum_required(VERSION 3.0)

# include(conanbuildinfo.cmake)
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_library(message message.pb.cc)
add_executable(client client.cpp)
add_executable(server server.cpp)
target_link_libraries(client message ${CONAN_LIBS})
target_link_libraries(server message ${CONAN_LIBS})
