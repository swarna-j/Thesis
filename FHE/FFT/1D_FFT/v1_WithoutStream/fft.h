#define N 1024

typedef struct complex_t {
    double re;
    double im;
} complex_t;

void add(complex_t left, complex_t right, complex_t *result);
void multiply(complex_t left, complex_t right, complex_t *result);
void FFT(complex_t[], complex_t[]);
