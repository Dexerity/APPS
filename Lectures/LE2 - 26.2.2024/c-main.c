#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void testik(int a, int b, int c)
{
    printf("a %d b %d c %d", a, b, c);
}

int add_int(int a, int b);
long add_long(long a, long b);
int str_len(char *ptr);
int sum_int(int *pole, int N);
void navelka(char *ptr);
long smallPos(long *pole, int N);
int pocetZavorek(char *ptr);

int main(){

    int i = 10;
    char pozdrav[] = "Hello!";
    int pole[10] = {1,2,3,4,5,6,7,8,9,10};
    long poleL[10] = {-1,2,3,4,-5,6,7,-8,9,10};
    char zavorky[] = "jhasdjj(aslkdj)(()lkasldkj)alskjd";

    testik(i++, i++, i++);

    printf("\nsoucet - %d\n", add_int(10, 333));
    printf("\nsoucet - %ld\n", add_long(1000000000, 1234567890));
    printf("len %d\n", str_len(pozdrav));    
    printf("len %ld\n", strlen(pozdrav));    
    printf("soucet %d\n", sum_int(pole, 10));
    printf("smallest %ld\n", smallPos(poleL, 10));
    printf("Pocet %d\n", pocetZavorek(zavorky));

    navelka(pozdrav);
    printf("%s\n", pozdrav);

    return 0;
}