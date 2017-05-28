#include "fft.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main(void)
{
    complex_t result[N], test_in[2*N];
    int i;

    // Init inputs
    for (i=0; i < N; i++) {
    	test_in[i].re = (double) i;
    	test_in[i].im = 0.0;
    }

    for (i=N; i < 2*N; i++) {
    	test_in[i].re = 0.0;
    	test_in[i].im = 0.0;
    }
    /* Do FFT */
    clock_t begin = clock();

    FFT(test_in, result);
    clock_t end = clock();
    for(i = 0; i < N; i++)
    	printf("%d: \t %f + %f i \n", i, result[i].re, result[i].im);

    double exec_time = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("FFT Execution Time: %f seconds \n", exec_time);
    return 0;
}
