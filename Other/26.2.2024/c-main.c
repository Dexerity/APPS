#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int intMax(int *arr, int N);
int intSum(int *arr, int N);
void intArrAdd(int *arr, int *arr2, int N);
int isPowerOf2(int x);
int bitPairSwap(int x);


int main(){
    int intArr[10] = {2,6,4,7,5,1,3,9,10,8};
    int intArr2[10] = {1,2,3,4,5,6,7,8,9,10};
    int power = 9;
    long num = 0x12345678;

    printf("Max = %d\n", intMax(intArr, 10));
    printf("Suma = %d\n", intSum(intArr, 10));

    intArrAdd(intArr, intArr2, 10);

    for (int i = 0; i < 10; i++)
    {
        printf("%d ", intArr[i]);
    }

    if(isPowerOf2(power) == 1)
        printf("\nis power\n");
    else if (isPowerOf2(power) == 0)
        printf("\nis not power\n");

    printf("swaped = 0x%x\n", bitPairSwap(num));
    

    return 0;
}