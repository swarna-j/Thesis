#include "fft.h"

// Cooley-Tukey FFT (in-place, breadth-first, decimation-in-frequency)
// Better optimized but less intuitive
void fft(Complex x[2*N])
{
	unsigned int k = N, n;
	double thetaT = 3.14159265358979323846264338328L / N;
	Complex phiT = Complex(cos(thetaT), sin(thetaT)), T;

	fft_label0:for(unsigned int i=0; i < 10; i++) //because 2^10 = 1024 - After 9 right shifts, k becomes <= 1 => 2^0 = 1
	{
		n = k;
		k >>= 1;
		phiT = phiT * phiT;
		T = 1.0L;
		fft_label1:for (unsigned int l = 0; l < k; l++)
		{
			fft_label2:for (unsigned int a = l; a < N; a += n)
			{
				unsigned int b = a + k;
				Complex t = x[a] - x[b];
				x[a] = x[a] + x[b];
				x[b] = t * T;
			}
			T *= phiT;
		}
	}

	// Decimate
	unsigned int m = (unsigned int)log2(N);
	fft_label3:for (unsigned int a = 0; a < N; a++)
	{
		unsigned int b = a;
		// Reverse bits
		b = (((b & 0xaaaaaaaa) >> 1) | ((b & 0x55555555) << 1));
		b = (((b & 0xcccccccc) >> 2) | ((b & 0x33333333) << 2));
		b = (((b & 0xf0f0f0f0) >> 4) | ((b & 0x0f0f0f0f) << 4));
		b = (((b & 0xff00ff00) >> 8) | ((b & 0x00ff00ff) << 8));
		b = ((b >> 16) | (b << 16)) >> (32 - m);
		if (b > a)
		{
			Complex t = x[a];
			x[a] = x[b];
			x[b] = t;
		}
	}
}
