y = 0.54 - 0.46 *cos(2*pi*(0:500-1)/500-1);
subplot(3,3,1);
plot(y);
title('hamming window');

t = linspace(0,1,500)';
x = 2*sin(2*pi*1000*t);
subplot(3,3,2);
plot(x);
title('sine wave');

z = x.*y';
subplot(3,3,3);
plot(z);
title('sine*hamming');