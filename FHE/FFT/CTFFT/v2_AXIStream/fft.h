#include <hls_video.h> //Required for streaming data
#include <ap_axi_sdata.h> //Required for defining channel attributes
#define N 1024

typedef ap_axiu<64,1,1,1> IOchannel;

typedef struct complex_t {
    double re;
    double im;
} complex_t;

void conv_from_polar(double r, double radians, complex_t *result);
void add(complex_t left, complex_t right, complex_t *result);
void multiply(complex_t left, complex_t right, complex_t *result);
void handleFFT(hls::stream<IOchannel> &inStream, hls::stream<IOchannel> &outStream);
void FFT(complex_t[], complex_t[]);
