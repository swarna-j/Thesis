#include <iostream>
#include <fstream>
#include <math.h>

#define PI 3.1415926535897932384626434
#define N 1024

using namespace std;

int main()
{
  std::ofstream outfile1, outfile2;  
  int n, k;
  
  outfile1.open("sine_lut.h");
  outfile1<<"const double sine[1024][1024] = {\n";
  
  for(k = 0; k < N-1; k++)
  {
    outfile1<<"{";
    for(n = 0; n < N-1; n++)
    {              
	outfile1<<sin(-2*PI*n*k/N)<<",\t";
    }
    outfile1<<sin(-2*PI*(N-1)*k/N)<<"},\n";
  }
  outfile1<<"{";
  for(n = 0; n < N-1; n++)
  {              
     outfile1<<sin(-2*PI*n*(N-1)/N)<<",\t";
  }
  outfile1<<sin(-2*PI*(N-1)*(N-1)/N)<<"}\n};";
  outfile1.close();
  
  outfile2.open("cos_lut.h");
  outfile2<<"const double cosine[1024][1024] = {\n";
  
  for(k = 0; k < N-1; k++)
  {
    outfile2<<"{";
    for(n = 0; n < N-1; n++)
    {        
       outfile2<<cos(-2*PI*n*k/N)<<",\t";       
    }
    outfile2<<cos(-2*PI*(N-1)*k/N)<<"},\n";
  }
  outfile2<<"{";
  for(n = 0; n < N-1; n++)
  {              
     outfile2<<cos(-2*PI*n*(N-1)/N)<<",\t";
  }
  outfile2<<cos(-2*PI*(N-1)*(N-1)/N)<<"}\n};";
  outfile2.close();
  
  return 0;
 }
