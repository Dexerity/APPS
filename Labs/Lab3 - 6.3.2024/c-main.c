#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int my_strchr(char * str, char to_find, int * count);
int str2int(char *buff, int *num);
int not_bits(long* var, char* array, long size);



int main(){
    char string[] = "Ahoj svete! EeEe";
    char to_find = 'e';
    int count; 
    int first = my_strchr(string, to_find, &count);
    char buff[255]="55";
    int num = 0;
    long var = 0xf0f0f0, x;
    char array[] = {0, 1, 2, 10, 15};
    int size = 5;

    printf("char %c found at %d and %d times\n", to_find, first, count);

    str2int(buff, &num);

    printf("%d\n", num);

    printf("%lx\n", var);
    x = not_bits(&var, array, size);
    printf("%lx\n", var);
    printf("%lx\n", x);
    
    return 0;
}