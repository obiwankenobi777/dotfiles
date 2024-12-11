#include <stdio.h>

int main(int argc, char *argv[]) {
    int i, sum = 0;

    for (i = 1; argv[i]; ++i) {
        int j = 0;
        for (; argv[i][j]; ++j) ++sum;
        printf("[%d] %s -> %d\n", i, argv[i], j);
    }
    printf("\nwords    -> %d\n", i - 1);
    printf("characters -> %d\n\n", sum);

    return 0;
} 
