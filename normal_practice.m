%% sine wave 
t = linspace(0,1,500);
y = 2*sin(2*pi*5000*t);
subplot(3,3,1);
plot(t,y);
xlabel("Time");
ylabel("A");
title("Sine wave");

%%Sample sequence / impulse sequence
n = -6:1: 6;
sample_sequence = zeros(n);
sample_sequence = 1*(n == 0);

subplot(3,3,2);
stem(n,sample_sequence);
xlabel("Data point");
ylabel("A");
title("Sample sequence");

%%unit Step sequence 

unit_step = zeros(n);
unit_step = 1*(n >= 0);

subplot(3,3,3);
stem( n, unit_step);
xlabel("n");
ylabel("A");
title("Unitstep sequence");

%% unit Ramp sequence
unit_ramp = 0*(n);
unit_ramp = n.*(n>=0);
 
 
subplot(3,3,4);
stem(n,unit_ramp);
title("Unit Ramp");
xlabel("n");
ylabel("A");

%%exponential sequences
expo = exp(-n);

subplot(3,3, 5);
stem(n, expo);
xlabel("n");
ylabel("A");
title("Exponential sequence");


