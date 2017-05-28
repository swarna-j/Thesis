#define N 1024
#define N1 2
#define N2 512

typedef struct complex_t {
    double re;
    double im;
} complex_t;

void conv_from_polar(double r, double radians, complex_t* result);
void add(complex_t left, complex_t right, complex_t *result);
void multiply(complex_t left, complex_t right, complex_t *result);
void FFT(complex_t[], complex_t[]);
