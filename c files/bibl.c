#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "bibl.h"



struct Square func1(double a, double b, double c)
{
    struct Square result;

    double D, x1 = 0, x2 = 0;
    D = b * b - 4 * a * c;
    
    if (D == 0)
    {
        x1 = -b / (a * 2);
        result.state = 1;
        result.res1 = x1;
        return result;
    }
    
    if(D < 0)
    {
        result.state = 0;
        return result;
        
    }
    
    if(D > 0)
    {
        x1 = (-b + sqrt(D))/(2 * a);
        x2 = (-b - sqrt(D))/(2 * a);
        result.state = 2;
        result.res1 = x1;
        result.res2 = x2;
        return result;
    }
}



