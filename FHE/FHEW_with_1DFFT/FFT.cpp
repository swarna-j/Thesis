#include <complex.h>
#include <fftw3.h>
#include "FFT.h"
#include "params.h"

double *in;
fftw_complex *out;
fftw_plan plan_fft_forw, plan_fft_back;
const int Npoint=2048;
int fft_fwd_count = 0, fft_back_count = 0;

typedef unsigned long long timestamp_t;

static timestamp_t get_timestamp ()
{
  struct timeval now;
  gettimeofday (&now, NULL);
  return  now.tv_usec + (timestamp_t)now.tv_sec * 1000000;
}

void FFTsetup() {
  in = (double*) fftw_malloc(sizeof(double) * 2*N);
  out = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * (N + 2));
  plan_fft_forw = fftw_plan_dft_r2c_1d(2*N, in, out,  FFTW_PATIENT);
  plan_fft_back = fftw_plan_dft_c2r_1d(2*N, out, in,  FFTW_PATIENT);
}
  
void FFTforward(Ring_FFT res, const Ring_ModQ val) {
  fft_fwd_count++;  
//  timestamp_t t0 = get_timestamp();  
  for (int k = 0; k < N; ++k)	{
    in[k] = (double) (val[k]);
    in[k+N] = 0.0;			
  }
  fftw_execute(plan_fft_forw); 
  for (int k = 0; k < N2; ++k) 
    res[k] = (double complex) out[2*k+1];	
/* timestamp_t t1 = get_timestamp();	
  printf("ifft_exec : %f\n", (double)((t1-t0)/1000000.0L));	*/

}

void ctfft(Ring_FFT res, const Ring_ModQ val) 
 {
      timestamp_t t0 = get_timestamp();  
      int i;
      complex_t input1[Npoint];
      complex_t result1[N2];
      for (i = 0; i < N; ++i)
      {   
         input1[i].re = (double) val[i];
         input1[i].im = 0.0;   
      }
      for ( i = N; i < Npoint; ++i)
      {   
         input1[i].re = (double)0.0;
         input1[i].im = 0.0;   
      }
      FFT(input1,result1);
      for (i = 0; i < N2; i++)
      {   
         res[i]=result1[i].re+result1[i].im*_Complex_I;
      }	
      timestamp_t t1 = get_timestamp();	
      printf("fft_exec : %f\n", (double)((t1-t0)/1000000.0L));	
}

void FFTbackward(Ring_ModQ res, const Ring_FFT val){
  fft_back_count++;
//  timestamp_t t0 = get_timestamp();  
  for (int k = 0; k < N2; ++k) {
    out[2*k+1] = (double complex) val[k]/N;
    out[2*k]   = (double complex) 0;
  }
  fftw_execute(plan_fft_back); 
  for (int k = 0; k < N; ++k)	
    res[k] = (long int) round(in[k]);
    
 /* timestamp_t t1 = get_timestamp();	
  printf("ifft_exec : %f\n", (double)((t1-t0)/1000000.0L));	*/
}
