#include "fft.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <iostream>

int main(void) {
    complex_t input[2048];
    complex_t result[1024];
    /* Init inputs */
    for (int i=0; i < N; i++) {
        input[i].re = (double) i;
        input[i].im = 0.0;
    }

    /* Do FFT */
    FFT(input, result);

    /* Compare results */
    printf("Index \t Cooley-Tukey Output \n");
    for (int i=0; i < N; i++) {
        printf("%d: \t %f + %fi \n", i, result[i].re, result[i].im);
    }
    return 0;
}

