
%creating a hamming window
y = 0.54 - 0.46 *cos(2*pi*(0:500-1)/500-1);

%figure 1
subplot(3,3,1);
plot(y);
title('hamming window');


%create a sinusoidal
t = linspace(0,1,500)';
x = 2*sin(2*pi*1000*t);

%figure 2 sinusoidal
subplot(3,3,2);
plot(x);
title('sine wave');

%multiplying sinusoidalwith hamming window
z = x.*y';

%figure 3 sine wave * hamming window
subplot(3,3,3);
plot(z);
title('sine*hamming');

%create rectangular window
N = 500;
rw = ones(N,1);

%figure rectangular window
subplot(3, 3, 4);
plot(rw);
title('rectangular Window');

%multiplying rectangular window and sinewave
rs = x.*rw';

%figure sinewave * rectangular window
subplot(3,3,5);
plot(rs);
title('sinewave multiply by rectangular window');


%%% Triangluar Window
tw = triang(N);
    
subplot(3, 3, 6)
plot(tw);
title('Triangular window');


