#include "fft.h"

int main()
{
    Complex test[2*N];
    int i;
    for(i = 0; i < N; i++)
    {
    	test[i].real(i);
    	test[i].imag(0.0);
    }
    for(i = N; i< 2*N; i++)
    {
    	test[i].real(0.0);
    	test[i].imag(0.0);
    }

    //CArray data(test, 2048);

    // forward fft
    fft(test);

    std::cout << "fft" << std::endl;
    for (int i = 0; i < 1024; ++i)
    {
        std::cout << test[i] << std::endl;
    }

    // inverse fft
   /* ifft(data);

    std::cout << std::endl << "ifft" << std::endl;
    for (int i = 0; i < 16; ++i)
    {
        std::cout << data[i] << std::endl;
    }*/
    return 0;
}
