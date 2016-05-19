project(ZMQ-Protobuf)
cmake_minimum_required(VERSION 3.0)

include(conanbuildinfo.cmake)
# include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_library(message message.pb.cc)
add_executable(client client.cpp)
add_executable(server server.cpp)


# IF(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
# 	set(CONAN_LIBS ${CONAN_LIBS} "rt")
# ENDIF(${CMAKE_SYSTEM_NAME} MATCHES "Linux") 
# message(${CONAN_LIBS})

target_link_libraries(client message ${CONAN_LIBS})
target_link_libraries(server message ${CONAN_LIBS})
# target_link_libraries(client message ${CONAN_LIBS} rt)
# target_link_libraries(server message ${CONAN_LIBS} rt)



include_directories(include)
# add_subdirectory(benchmark)
add_subdirectory(test)
