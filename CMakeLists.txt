project(MyHello)
cmake_minimum_required(VERSION 3.0)
# cmake_minimum_required(VERSION 2.8)

include(conanbuildinfo.cmake)
# include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_library(message message.pb.cc)
add_executable(client client.cpp)
add_executable(server server.cpp)


message(${CONAN_LIBS})

set(variable "value")
message($variable)
set(variable variable "value")
message($variable)



IF(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
ENDIF(${CMAKE_SYSTEM_NAME} MATCHES "Linux") 

# target_link_libraries(client message ${CONAN_LIBS})
# target_link_libraries(server message ${CONAN_LIBS})
target_link_libraries(client message ${CONAN_LIBS} rt)
target_link_libraries(server message ${CONAN_LIBS} rt)
