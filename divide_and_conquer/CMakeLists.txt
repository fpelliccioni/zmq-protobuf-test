project(ZMQ2)
cmake_minimum_required(VERSION 3.0)

include(conanbuildinfo.cmake)
# include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(tasksink tasksink.cpp)
add_executable(taskvent taskvent.cpp)
add_executable(taskwork taskwork.cpp)

target_link_libraries(tasksink ${CONAN_LIBS})
target_link_libraries(taskvent ${CONAN_LIBS})
target_link_libraries(taskwork ${CONAN_LIBS})
