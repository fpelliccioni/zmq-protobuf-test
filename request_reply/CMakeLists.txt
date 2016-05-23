project(ZMQ2)
cmake_minimum_required(VERSION 3.0)

include(conanbuildinfo.cmake)
# include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(hwclient hwclient.cpp)
add_executable(hwserver hwserver.cpp)

target_link_libraries(hwclient ${CONAN_LIBS})
target_link_libraries(hwserver ${CONAN_LIBS})
