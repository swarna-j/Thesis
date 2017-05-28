#include <stdio.h>
#include <math.h>

#define PI 3.1415926535897932384626434
#define N 1024

int main()
{
   FILE *fp1, *fp2;
   //--------------------------------------------------
   fp1 = fopen("sine_lut.h", "w+");
   fprintf(fp1, "const double sine[%d][%d] = {\n", N, N);
   int n, k;
  
   for(k = 0; k < N-1; k++)
   {
     fprintf(fp1, "{");
     for(n = 0; n < N-1; n++)
     {              
 	fprintf(fp1, "%lf,\t", sin(-2*PI*n*k/N)); 
     }
     fprintf(fp1, "%lf},\n", sin(-2*PI*(N-1)*k/N));
   }
   fprintf(fp1, "{");
   for(n = 0; n < N-1; n++)
   {              
      fprintf(fp1, "%lf,\t", sin(-2*PI*n*(N-1)/N));
   }
   fprintf(fp1, "%lf}\n};", sin(-2*PI*(N-1)*(N-1)/N));
   fclose(fp1);
   
   //--------------------------------------------------   
   fp2 = fopen("cos_lut.h", "w+");
   fprintf(fp2, "const double cosine[%d][%d] = {\n", N, N);  
   
   for(k = 0; k < N-1; k++)
   {
     fprintf(fp2, "{");
     for(n = 0; n < N-1; n++)
     {              
 	fprintf(fp2, "%lf,\t", cos(-2*PI*n*k/N)); 
     }
     fprintf(fp2, "%lf},\n", cos(-2*PI*(N-1)*k/N));
   }
   fprintf(fp2, "{");
   for(n = 0; n < N-1; n++)
   {              
      fprintf(fp2, "%lf,\t", cos(-2*PI*n*(N-1)/N));
   }
   fprintf(fp2, "%lf}\n};", cos(-2*PI*(N-1)*(N-1)/N));
   fclose(fp2);  
   //--------------------------------------------------   
   return 0;
 }
