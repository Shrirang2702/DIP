clc;
clear all;

disp('Linear Convolution Practical')

x=input("Enter sequence for x(n): ");
h=input("Enter sequence for h(n): ");

n1=length(x);
n2=length(h);

N = n1+n2-1;

x =[x,zeros(1,N-n1)]; 
h =[h,zeros(1,N-n2)];

y=zeros(1,N);
for n=1:N
    for k=1:n
        y(n) = y(n) + x(k) * h(n-k+1);
        //disp(y(n))
    end
end
disp(y);
//y co-ordinates
ny = 0:N-1;
subplot(3,1,1);
plot2d4(ny, x);
title("x(n)");

subplot(3,1,2);
plot2d4(ny, h);
title("h(n)");

subplot(3,1,3);
plot2d4(ny, y);
title("y(n)");
