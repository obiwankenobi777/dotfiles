#include <stdio.h>
#include <stdlib.h>

typedef struct {
    long long int *items;
    long long int top;
    long long int capacity;
} stack;

stack init_stack(void);
void push(stack *s, long long int i);
void print_stack(stack *s);
void free_stack(stack *s);

int main(void) {
    long long int number;
    do {
        printf("Write a natural number greater than 1 >> ");
        scanf("%lld", &number);

        if (number < 2) {
            printf("Input ERROR!\nPlease, REPEAT!\n");
        }
    } while (number < 2);

    stack div = init_stack();
    long long int i = 2;
    int count = 0;
    for (; i < number; ++i) {
        if (number % i == 0) {
            push(&div, i);
            ++count;
        }
    }

    if (count == 0) {
        printf("The number %lld is a prime number!\n", number);
    }
    else {
        printf("The nubmer %lld isn't a prime number!\n", number);
        print_stack(&div);
    }
    putchar('\n');

    free_stack(&div);

    return 0;
}

stack init_stack(void) {
    stack s;
    s.top  = 0;
    s.capacity = 2;
    s.items = (long long int*)malloc(s.capacity * sizeof(long long int));

    if (!s.items) {
        printf("Memory allocation failure!\n");
        exit(1);
    }

    return s;
}

void push(stack *s, long long int i) {
    if (s->top == s->capacity) {
        s->capacity *= 2;
        s->items = realloc(s->items, s->capacity * sizeof(long long int));

        if (!s->items) {
        printf("Memory allocation failure!\n");
        exit(1);
        }
    }
    s->items[s->top++] = i;
}

void print_stack(stack *s) {
    printf("\nTotal divisors: %d\n", s->top);

    long long i = 0;
    putchar('[');
    for (; i < s->top - 1; ++i) {
        printf("%lld, ", s->items[i]);
    }
    printf("%lld]\n", s->items[i]);
}

void free_stack(stack *s) {
    free(s->items);
    s->items = NULL;
}
