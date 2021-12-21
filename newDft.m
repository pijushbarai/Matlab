Fs = 8000;
ts= 1/Fs;
N = 8;
n = 0:N-1;
x = sin(2*pi*1000*n*ts) + .5*sin(2*pi*2000*n*ts + 3*pi/4);


subplot(3,3,1);
stem(n,x);
title("x(n)");
X = zeros(N,1);

for m = 1:N
  for n = 1:N
    X(m) = X(m) + x(n)* exp(-2j*pi*(n-1)*(m-1)/N);
  end
end  
n = 0:N-1; 
subplot(3,3,2);
stem(n,real(X));
title("Dft real part");

subplot(3,3,3)
stem(n,imag(X))
title("Imaginary part")

subplot(3,3,4)
stem(n,abs(X))
title("Magnitude Spectrum")

subplot(3,3,5)
stem(n,abs(X).^2)
title("POwer Spectrum");

subplot(3,3,6)
stem(n, angle(X)*180/pi)
title("angles")

 