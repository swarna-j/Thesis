#include "ct_fft.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <complex>

#define PI 3.1415926535897932384626434

// Implements the Cooley-Tukey FFT algorithm.
void FFT(complex_t input[2*N], complex_t output[N])
{
    int k, n;
    complex_t mul_res, conv_res, add_res;
    // Compute N DFTs of length 1 using naive method
    for (k = 0; k < N; k++)
    {
       conv_res.re = 1;
       conv_res.im = 0; // -2*PI*n*k2/N2 --> k2 = 0, n = 0 for 1D Convolution
       multiply(input[k], conv_res, &mul_res);
       /* Multiply by the twiddle factors  ( e^(-2*pi*j/N * k1*k2)) and transpose
          conv_from_polar(1, -2.0*PI*k1*k2/N, &conv_res); --> k2 = 0 for 1D Convolution */
       multiply(conv_res, mul_res, &mul_res);
       input[k] = mul_res;
    }

    for(k = 0; k < N; k++)
    {
       output[k].re = 0.0;
       output[k].im = 0.0;
       for(n = 0; n < N; n++)
       {
    	  std::complex<double> t = std::polar(1.0, -2 * PI * n* k / N);
    	  conv_res.re = std::real(t);
    	  conv_res.im = std::imag(t);
          multiply(input[n], conv_res, &mul_res);
          add(output[k], mul_res, &add_res);
          output[k] = add_res;
       }
    }
 }

//-------------------Utility Functions-------------------------
 void add(complex_t left, complex_t right, complex_t* result)
 {
    (*result).re = left.re + right.re;
    (*result).im = left.im + right.im;
 }

 void multiply(complex_t left, complex_t right, complex_t* result)
 {
    (*result).re = left.re*right.re - left.im*right.im;
    (*result).im = left.re*right.im + left.im*right.re;
 }
