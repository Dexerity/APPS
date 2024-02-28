#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int data = 0b10101010; //global
int count = 0; //global
int result_num = 0; //global
int iterations = 6; //global
char text[] = "rXtXzXc"; //global
char from = 'X'; //global
char replace_to = 'e'; //global

void count_ones();
void fibb();
void replace_char();


int main(){

    count_ones();

    printf("Ones %d\n", count);

    data = 0b111110101010; // global
    count_ones();

    printf("Ones %d\n", count);

    fibb();
    printf("7th fibbonaci: %d\n", result_num);

    printf("string: %s\n", text);
    replace_char();
    printf("string: %s\n", text);

    return 0;
}