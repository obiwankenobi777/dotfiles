#include <stdio.h>
#include <stdlib.h>

typedef struct {
    long long int *items;
    long long int top;
} stack;
static int initial = 2;

stack init_stack(void);
void push(stack *s, long long int i);
void print_stack(stack *s);

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

    return 0;
}

stack init_stack(void) {
    stack s;
    s.top  = 0;
    s.items = (long long int*)malloc(initial * sizeof(long long int));

    return s;
}

void push(stack *s, long long int i) {
    s->items[s->top] = i;
    s->top++;
    if (s->top == initial - 1) {
        initial += 2;
        s->items = realloc(s->items, initial * sizeof(long long int));
   } 
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
