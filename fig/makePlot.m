clear all
close all
load velos
a = a';
A = sqrt(sum(a.^2));
A = A([1:278,300:length(A)]);
T = 0.01;

A = smooth(A,40);

k = 4.8/max(A);

A = A*k;

L = length(A);
t = 1:-1/(L-367):0;
t = t';

A = [A(1:366);A(367:L).*t];


%plot((1:length(a))*T,A);
plot((1:length(A))*T,A,'LineWidth',3);
grid on
axis([0 5.3, 0, 5]) 
xlabel('Time (sec)', 'fontsize',16)
ylabel('Velocity (m/s)', 'fontsize',16)

shg