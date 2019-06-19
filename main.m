close all
clear all
clc

N =10000;
Ts = 0.01;

x = [ 1; 0];
x_h(:,1) = x;

for i=1:N

    u = sin(0.1*i*Ts);
    % u = 1; %sin(0.1*i*Ts);

    x_1 = runge(x,u,@plant,Ts);
    x = x_1 ;

    x_h(:,i+1) = x;

end


plot(x_h')
