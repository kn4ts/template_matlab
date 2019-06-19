% Test plant 
% single input signal (actuator has nonlinear characteristic)
% 2 state values
function x_d = plant(x,u)
    A = [ 0  1 ; -0.4  -0.1 ];
    B = [ 0 ; 1 ];
    u_p = actuator(u);
    x_d = A * x + B * u_p;
end

function u_p = actuator(u)
    u_p = u^2 ;
end