#include <stdio.h>

#define MAX_N 92

long long memo[MAX_N];

void init_memo() {
    for (size_t ix = 0; ix < MAX_N; ix++) {
        memo[ix] = -1;
    }
    
}

long long fib(int nth) {
    if (nth < 2)
        return nth;
    
    if (memo[nth] != -1)
        return memo[nth];

    int nth_minus2 = fib(nth - 2);
    int nth_minus1 = fib(nth - 1);
    memo[nth] = nth_minus2 + nth_minus1;
    return memo[nth];
}

int main(int argc, char *argv[]) {
    int target;
    printf("Enter a number: ");
    if (scanf("%d", &target) != 1 || target < 0 || target >= MAX_N) {
        printf("Invalid input\n");
        return 1;
    }

    init_memo();
    printf("Fib(%d) = %lld\n", target, fib(target));

    return 0;
}