clc ;
clear all;

disp('DFT-IDFT  PRAC ');

x = input ( "Enter sequence x: " );
h = input ( "Enter sequence h: " );

m = length ( x );
n = length ( h );
N = n +m -1;
/*
x=[x,zeros(1,N-m)];
h=[h,zeros(1,N-n)];
*/

f1 = fft(x);
disp("f1",f1);
f2 = fft(h);
f3 = f1 .* f2 ;  // freq domain multiplication
f4 = ifft (f3);

disp (f4, "Convolution Sum Result DFT−IDFT method = ");
subplot (3 ,1 ,1);
plot2d3 ( x );
xtitle ("Input sequence");
subplot (3 ,1 ,2) ;
plot2d3 (h );
xtitle ("Impulse sequence") ;
subplot (3 ,1 ,3) ;
plot2d3 ( f4 );
xtitle ("Resultant sequence") ;
