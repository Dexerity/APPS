#include <stdio.h>

int g_int_array[15] = {-3, -8, 80, 2710, 32, 439, 9099, 10, 77, -273, 2, 22222, 0, -23, 23};
int g_int_output;
int pom;
char g_char_array[32] = "testovaci pole pro cv2";

void fce1(int n);

int main(){
    fce1(15);
    printf("Soucet: %d\n",g_int_output);
}