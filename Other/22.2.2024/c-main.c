#include <stdio.h>

long binPass = 0x456E6A617463306D;
char text[16] = "zatim prazdny";

int cislo = 0xA1B2C3D4;
char bajt0, bajt1, bajt2, bajt3;

char cpole[4] = {10, -20, 30, -40};
long lpole[4];

void prevedPass();
void rozdelIntDoCharu();
void cpoleDoLpole();
void nullHorniBajt();

int main()
{
    prevedPass();
    printf("Pass: %s\n", text);

    rozdelIntDoCharu();
    printf("\nBajty: %02X %02X %02X %02X\n", bajt0, bajt1, bajt2, bajt3);

    cpoleDoLpole();
    printf("\nLpole: %ld %ld %ld %ld\n", lpole[0], lpole[1], lpole[2], lpole[3]);

    nullHorniBajt();
    printf("\nVynulovany bajt Lpole: %ld %ld %ld %ld\n", lpole[0], lpole[1], lpole[2], lpole[3]);

    return 0;
}