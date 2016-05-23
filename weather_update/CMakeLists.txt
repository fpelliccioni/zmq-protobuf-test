project(ZMQ2)
cmake_minimum_required(VERSION 3.0)

include(conanbuildinfo.cmake)
# include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(wuserver wuserver.cpp)
add_executable(wuclient wuclient.cpp)

target_link_libraries(wuserver ${CONAN_LIBS})
target_link_libraries(wuclient ${CONAN_LIBS})
