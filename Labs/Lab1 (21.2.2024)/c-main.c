#include <stdlib.h>
#include <stdio.h>

int g_int_x, g_int_y;
char g_char_arr[5] = "....";
char g_char_str[] = "Mám rád C++";
long g_long_arr[2];

void setNums();
void moveBytes();
void changeWord();
void intoArr();

int main(){

    setNums();
    printf("\n%d %x", g_int_x, g_int_y);
    moveBytes();
    printf("\n%s", g_char_arr);
    printf("\n%s", g_char_str);
    changeWord();
    printf("\n%s", g_char_str);

    intoArr();
    for (int i = 0; i < 2; i++)
    {
        printf("\n%ld", g_long_arr[i]);
    }
    


    return 0;
}