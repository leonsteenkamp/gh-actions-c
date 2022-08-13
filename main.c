// A simple program to use the simple library
#include <stdio.h>
#include "lib.h"

int main ()
{
    int result = 0;

    result = add(4, 5);

    printf("The result is: %d\n", result);
}
