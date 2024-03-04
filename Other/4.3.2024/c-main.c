#include <stdlib.h>
#include <stdio.h>

int facNum = 9;
int intArr[9] = {1,2,3,4,5,6,7,8,9}; 

int factorial();
int twoSum(int x, int y);
void arrRead(int *intarr, int l);
int intCmp(int x, int y);


int main() {

    printf("factorial - %d\n", factorial());
    printf("sum - %d\n", twoSum(2, 3));

    if(intCmp(1,2) == 0)
        printf("same numbers\n");
    else 
        printf("not same numbers\n");

    return 0;
}