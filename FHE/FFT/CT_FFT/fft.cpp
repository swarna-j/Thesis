#include "fft.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PI 3.1415926535897932384626434

// Implements the Cooley-Tukey FFT algorithm. @expects: N1*N2 = N
void FFT(complex_t input[2*N], complex_t output[N]) {
    int k1, k2, n;
    complex_t mul_res, conv_res, add_res;
    // Allocate columnwise matrix 
    complex_t columns[N1][N2];     
    // Allocate rowwise matrix 
    complex_t rows[N2][N1];
    
    complex_t x[N2]; 
    complex_t y[N1]; 
        
    // Reshape input into N1 columns 
    for (k1 = 0; k1 < N1; k1++) {    
        for(k2 = 0; k2 < N2; k2++) 
            columns[k1][k2] = input[N1*k2 + k1];                              
    }
        
    // Compute N1 DFTs of length N2 using naive method 
    for (k1 = 0; k1 < N1; k1++) 
    { 
       for(k2 = 0; k2 < N2; k2++) 
       {
           x[k2].re = 0.0;
           x[k2].im = 0.0;
           for(n = 0; n < N2; n++) 
           {
              conv_from_polar(1, -2*PI*n*k2/N2, &conv_res);              
              multiply(columns[k1][n], conv_res, &mul_res);
              add(x[k2], mul_res, &add_res);
              x[k2] = add_res;
           }
        }           	
         
	// Multiply by the twiddle factors  ( e^(-2*pi*j/N * k1*k2)) and transpose 
        FFT_label0:for(k2 = 0; k2 < N2; k2++)
        {	   
           columns[k1][k2] = x[k2];
	       conv_from_polar(1, -2.0*PI*k1*k2/N, &conv_res);
           multiply(conv_res, columns[k1][k2], &mul_res);
           rows[k2][k1] = mul_res;
        }  
    }
        
    // Compute N2 DFTs of length N1 using naive method 
    for (k2 = 0; k2 < N2; k2++) 
    {
        for(k1 = 0; k1 < N1; k1++) 
        {
           y[k1].re = 0.0;
           y[k1].im = 0.0;
           for(n = 0; n < N1; n++) 
           {
              conv_from_polar(1, -2*PI*n*k1/N1, &conv_res);
              multiply(rows[k2][n], conv_res, &mul_res);
              add(y[k1], mul_res, &add_res);
              y[k1] = add_res;
           }
        }
        for(k1 = 0; k1 < N1; k1++) 	
        {
           rows[k2][k1] = y[k1];
        }                           
    }    

    // Flatten into single output 
    for(k1 = 0; k1 < N1; k1++) {
        for (k2 = 0; k2 < N2; k2++) {
            output[N2*k1 + k2] = rows[k2][k1];
        }
    }
 }
 
 //-------------------Utility Functions-------------------------
 void conv_from_polar(double r, double radians, complex_t* result) {
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
