#include <multiply/multiply.h>
#include <gtest/gtest.h>

TEST(MultiplyTests, TestIntegerOne_One)
{
    const auto expected = 1;
    const auto actual = multiply(1, 1);
    ASSERT_EQ(expected, actual);
}

TEST(MultiplyTests, TestIntegerZero_Zero)
{
    const auto expected = 0;
    const auto actual = multiply(0, 0);
    ASSERT_EQ(expected, actual);
}

TEST(MultiplyTests, TestIntegerZero_One)
{
    const auto expected = 0;
    const auto actual = multiply(0, 1);
    ASSERT_EQ(actual, expected);
}

int main(int argc, char** argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

