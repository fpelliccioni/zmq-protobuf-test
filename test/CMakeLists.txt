# PROJECT NAME, LICENSE, ...

enable_testing()

add_subdirectory(syntactic_checks)

add_custom_target(tests ALL
    COMMAND ${CMAKE_CTEST_COMMAND} -C Debug --output-on-failure -R "test.+"
    COMMENT "Build and run all the unit tests.")

function(tao_algorithm_add_test name)
    add_executable(test.${name} EXCLUDE_FROM_ALL ${name}.cpp)
    add_test(NAME test.${name} COMMAND test.${name})
    add_dependencies(tests test.${name})
endfunction()

file(GLOB_RECURSE TAO_ALGORITHM_TEST_SOURCES
     RELATIVE ${CMAKE_CURRENT_LIST_DIR}
     "*.cpp")

foreach(file IN LISTS TAO_ALGORITHM_TEST_SOURCES)
    string(REGEX REPLACE "\\.cpp$" "" name ${file})
    string(REGEX REPLACE "/" "." name ${name})
    tao_algorithm_add_test(${name})
endforeach()
