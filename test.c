#include <stdlib.h>
#include "ctest.h"
#include "bibl.h"



CTEST(distance_suite, simple_test1)
{
    const int a = 1, b = -70, c = 600;
    Square z = func1(a, b, c);
    ASSERT_EQUAL(60, z.res1);
    ASSERT_EQUAL(10, z.res2);
}

CTEST(distance_suite, simple_test2)
{
    int a = 1, b = 4, c = 4;
    Square z = func1(a,b,c);
    ASSERT_EQUAL(1, z.state);
    ASSERT_EQUAL(-2, z.res1);
}

CTEST(distance_suite, simple_test3)
{
    int a = 1, b = 3, c = 4;
    Square z = func1(a,b,c);
    ASSERT_EQUAL(0, z.state);
}

