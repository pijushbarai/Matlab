%% convolution sum of two input signal
%x = input("Enter your first sequence")
%h = input("Enter Your second sequence")
clear;
x = [1,2,3,4];
h = [1,1,1,1];
subplot(3,3,1);
stem(x);
subplot(3,3,2);
stem(h);

N1 = length(x);
N2 = length(h);

xx = [x,zeros(1,N2)];
hh = [h, zeros(1,N1)];

subplot(3,3,3);
stem(xx);
subplot(3,3,4);
stem(hh);

for i=1:N1+N2-1
  y(i) = 0;
  for j=1:N1
    if((i-j+1)> 0)
      y(i) = y(i) + (xx(j)*hh((i-j)+1));
      else
    end
  end
end

subplot(3,3,5);
stem(y);
title("convolution");
