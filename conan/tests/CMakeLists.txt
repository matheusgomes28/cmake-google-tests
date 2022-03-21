find_package(GTest REQUIRED)

add_executable(multiply_test multiply_test.cpp)

target_link_libraries(multiply_test
 PRIVATE
  GTest::GTest
  multiply)

add_test(multiply_gtest multiply_test)
