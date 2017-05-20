#include <complex>
#include <iostream>
#include <valarray>

#define N 1024
const double PI = 3.141592653589793238460;

typedef std::complex<double> Complex;
typedef std::valarray<Complex> CArray;

void fft(Complex x[]);
