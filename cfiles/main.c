#include <stdio.h>

#define CTEST_MAIN

// uncomment lines below to enable/disable features. See README.md for details
#define CTEST_SEGFAULT
//#define CTEST_NO_COLORS
//#define CTEST_COLOR_OK

#include "ctest.h"
#include "bibl.h"

int main()
{
    float a, b, c;
    printf("vvedite a: "); scanf("%f", &a);
    printf ("vvedite b: "); scanf("%f", &b);
    printf("vvedite c: "); scanf("%f", &c);
    struct Square z = func1(a, b, c);

	if(z.state == 0) printf(" kornei  nema\n");
	if(z.state == 1) printf("  x = %6f\n", z.res1);
	if(z.state == 2) printf("  x1 = %6f \n   x2 = %6f\n", z.res1, z.res2);
    return 0;
    
}
