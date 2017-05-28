#include "fft.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 1024

int main(void)
{
	hls::stream<IOchannel> inStream;
	hls::stream<IOchannel> outStream;
	IOchannel inVal, outVal;
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

    //Configure Channel attributes
    inVal.user = 1;
    inVal.id = 0;
    inVal.dest = 0;
    inVal.keep = 1;
    inVal.strb = 1;

    for(i = 0; i < (2*N); i++)
    {
       inVal.data = *((ap_uint<64> *)(&test_in[i].re));
       inStream << inVal;
       inVal.data = *((ap_uint<64> *)(&test_in[i].im));
       inStream << inVal;
    }

    /* Do FFT */
    clock_t begin = clock();
    handleFFT(inStream, outStream);
    clock_t end = clock();

    /* Compare results */
    printf("Index \t Output \n");
    for (i=0; i < N; i++) {
    	outStream.read(outVal);
    	result[i].re = *((double*) (&outVal.data));
    	outStream.read(outVal);
    	result[i].im = *((double*) (&outVal.data));
    }

    for(i = 0; i < N; i++)
    	printf("%d: \t %f + %f i \n", i, result[i].re, result[i].im);

    double exec_time = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("FFT Execution Time: %f seconds \n", exec_time);
    return 0;
}
