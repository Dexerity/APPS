#include <stdlib.h>
#include <stdio.h>

int pozice_max(int *tp_ipole, int t_N);
void int2str(int t_num, char *tp_str);
int cetnost(char *tp_str);

int main() {
    int pole[] = {1,2,3,4,5,6,7,8,9,10};
    char cislo[128];

    printf("Pozice max - %d\n", pozice_max(pole, 2));

    int2str(65535, cislo);

    printf("cislo %s\n", cislo);

    printf("Cetnost vyhral znak - %d\n", cetnost("Ahoj prrogramatori!"));
    
    return 0;
}