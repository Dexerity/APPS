#include <stdlib.h>
#include <stdio.h>

int facNum = 9;
int intArr[9] = {1,2,3,4,5,6,7,8,9}; 

int factorial();
int twoSum(int x, int y);
void arrRead(int *intarr, int l);
int intCmp(int x, int y);
int binSearch(int *intarr, int l, int x);


int main() {
    int x = 8;

    printf("factorial - %d\n", factorial());
    printf("sum - %d\n", twoSum(2, 3));

    arrRead(intArr, 9);

    if(intCmp(1,2) == 0)
        printf("same numbers\n");
    else 
        printf("not same numbers\n");

    for (int i = 0; i < 10; i++)
    {
        if(binSearch(intArr, 9, i) >= 0)
            printf("Found at %d\n", binSearch(intArr, 9, i));
        else
            printf("not found %d\n", binSearch(intArr, 9, i));
    }
    

        

    return 0;
}