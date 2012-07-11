#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "main.h"

extern int a;
extern int get_num();

int main(int argc, char *argv[])
{
    printf("before num 'a' change, a = %d\r\n", get_num());
    a = 12;
    printf("after num 'a' changed, a = %d\r\n", get_num());

    return 0;
}
