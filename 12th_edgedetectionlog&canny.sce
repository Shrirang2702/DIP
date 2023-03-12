close ;
clc ;
a = imread ('C:\Users\Adi\Downloads\BRAVE\supraa.jpg');
a = rgb2gray(a);
c = edge (a, 'sobel');
d = edge (a, 'prewitt');
e = edge (a, 'log');
f = edge (a, 'canny');

figure(1)
imshow(a)
title ('Original Image')

figure(2)
imshow(c)
title ('Sobel')

figure(3)
imshow(d)
title('Prewitt')

figure(4)
imshow(e)
title ('Log')

figure(5)
imshow(f)
title ('Canny')
