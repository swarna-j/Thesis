#include "fft.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PI 3.1415926535897932384626434

void handleFFT(hls::stream<IOchannel> &inStream, hls::stream<IOchannel> &outStream)
{
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE axis port=outStream
	IOchannel inChannel, outChannel;
    complex_t input[2*N], output[N];
    int idx;
    for(idx = 0; idx < 2*N; idx++)
    {
    #pragma HLS PIPELINE
        //Read and Cache Input channel value once (Block here if FIFO sender is empty)
        inChannel = inStream.read();
        input[idx].re = *((double*) (&inChannel.data));
        inChannel = inStream.read();
        input[idx].im = *((double*) (&inChannel.data));
    }

    FFT(input, output);

    outChannel.keep = inChannel.keep;
    outChannel.strb = inChannel.strb;
    outChannel.user = inChannel.user;
    outChannel.id   = inChannel.id;
    outChannel.dest = inChannel.dest;
    outChannel.last = 0;

    for(idx = 0; idx < N-1; idx++)
    {
		outChannel.data = *((ap_uint<64> *)(&output[idx].re));
		outStream.write(outChannel); //Reference: Vivado Design Suite User Guide
		outChannel.data = *((ap_uint<64> *)(&output[idx].im));
		outStream.write(outChannel);
    }

    outChannel.data = *((ap_uint<64> *)(&output[idx].re));
    outStream.write(outChannel);
    outChannel.data = *((ap_uint<64> *)(&output[idx].im));
    outStream.write(outChannel);
    outChannel.last = 1;
}

// Implements the Cooley-Tukey FFT algorithm.
void FFT(complex_t input[2*N], complex_t output[N])
{
    int k, n;
    complex_t mul_res, conv_res, add_res;
    // Compute N DFTs of length 1 using naive method
    FFT_label0:for (k = 0; k < N; k++)
    {
       conv_res.re = 1;
       conv_res.im = 0; // -2*PI*n*k2/N2 --> k2 = 0, n = 0 for 1D Convolution
       multiply(input[k], conv_res, &mul_res);
       /* Multiply by the twiddle factors  ( e^(-2*pi*j/N * k1*k2)) and transpose
          conv_from_polar(1, -2.0*PI*k1*k2/N, &conv_res); --> k2 = 0 for 1D Convolution */
       multiply(conv_res, mul_res, &mul_res);
       input[k] = mul_res;
    }
    // Compute 1 DFT of length N using naive method
    FFT_label1:for(k = 0; k < N; k++)
    {
       output[k].re = 0.0;
       output[k].im = 0.0;
       FFT_label2:for(n = 0; n < N; n++)
       {
          conv_from_polar(1,-2*PI*n*k/N , &conv_res); //-2*PI*n*k/N, &conv_res);
          multiply(input[n], conv_res, &mul_res);
          add(output[k], mul_res, &add_res);
          output[k] = add_res;
       }
    }
 }

//-------------------Utility Functions-------------------------
 void conv_from_polar(double r, double radians, complex_t* result)
 {
    (*result).re = r * cos(radians);
    (*result).im = r * sin(radians);
 }

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
