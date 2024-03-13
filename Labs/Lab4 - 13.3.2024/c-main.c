#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void fill_pyramid_numbers(long * numbers, int size);
long multiples(long * numbers, int size, long factor);
int factorial(int * numbers, int size);

int main(){
    long array[10];
    
    int nums[6] = {2,3,4,5,6,7};




    fill_pyramid_numbers(array, 10);



    for (int i = 0; i < 10; i++)
    {
        printf("%ld\n", array[i]);
    }

    long arr[10] = {10,5,8,15,8,9,3,1,10,45};

    long x = multiples(arr, 10, 2);
    printf("\ndiv numbers: %ld\n", x);

    for (int i = 0; i < 10; i++)
    {
        printf("%ld\n", arr[i]);
    }
/*
    printf("number of overflows: %d\n", factorial(nums, 6));

    for (int i = 0; i < 6; i++)
    {
        printf("%d\n", nums[i]);
    }
*/
    return 0;
}