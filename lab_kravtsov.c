#include <stdio.h>
#include <stdlib.h>

#define M 4

int find_sum(int mas[M], int column){
    int sum = 0;

    for (int i = 0; i < column; i++)
        sum = sum + mas[i];
    return (sum);
}
int main(int ac, char **av){
    int mas[M][M] = {
        {1, 4, 7, 0},
        {13, 12, 0, 0},
        {9, 46, 7, 8},
        {0, 77, 7, 0},
    };

    int line = atoi(av[1]);
    int res = 0;
    res = find_sum(mas[line], 4);
    printf("%d\n", res);
    return (0);
}