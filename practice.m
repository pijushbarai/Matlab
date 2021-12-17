%%sin wave
Fs = 32000;
T = 1/Fs;
t = linspace(0,1,500);
y = 2*sin(2*pi*10000*t);
subplot(3,3,1);
plot(t,y);
subplot(3,3,2)
stem(t,y);

% hamming window
N = 500;
n = 0:N-1;
hmw = 0.5-0.5* cos(2*pi*n/(N-1));
subplot(3,3,3);
plot(hmw);



x = hmw.*y;
subplot(3,3,4);
plot(x);

%rectangle window
r = ones(1,N);
subplot(3,3,5);
plot(r);
title('rectangular window');

rw = y.*r;
subplot(3,3,6);
plot(rw);
title('rectangular multiply');

%triangular window
tw = 1 - abs(((2*n) -(N+1) )/(N-1));
subplot(3,3,6);
plot(tw);
title('triangular window');

twy = tw.*y;
subplot(3,3,7);
plot(twy);
title('y * triangular window');



 
 
 
 