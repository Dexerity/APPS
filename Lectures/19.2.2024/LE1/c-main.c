#include <stdio.h>

int x = 2;
int y = 22;
int suma;
int max;
long l = 0x1111111111;

int pole[10] = {1,2,3,4,5,6,7,8,9,10};
char retezec[10] = "hello";

void cosi();
void minmax();
void suma_pole();
void na_velka();

int main()
{
    printf("%d %d %lx\n", x, y, l);
    cosi();
    printf("%d %d\n", x, y);
    printf("%s\n", retezec);
    printf("suma: %d\n", suma);
    minmax();
    printf("max: %d\n", max);
    suma_pole();
    printf("suma: %d\n", suma);
    na_velka();
    printf("%s\n", retezec);

}