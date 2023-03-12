clc ;
clear all;

g = input ( "enter x seq: " ) ;
h = input ( "enter h seq: " ) ;
n1 = length ( g ) ;
n2 = length ( h ) ;
n=max(n1,n2);
n3=n1-n2;
if(n3 >0)
    h=[h,zeros(1,n3)];
else
    g=[g,zeros(1,-n3)];
end
for p =1:n
    y(p)=0;
    for q=1:n
        j=p-q+1;
        if(j <=0)
            j=n+j;
        end
        y(p)=[y(p)+g(q)* h(j)];
    end
end

disp(y);
subplot(3,1,1);
title("Result");
plot(y);

subplot(3,1,2);
title("Input Sequence");
plot(g);

subplot(3,1,3);
title("Impulse Sequence");
plot(h);
