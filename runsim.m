close all;
clear;

% Initial State
x_i = [0,0,-pi,0];

% Final State
x_f = [2,0,0,0];
% x_f = [5,0,0,0];
% x_f = [0,0,0,0];

time_int = 0:0.1:5;

% Solving system of equations
[t,x] = ode45(@(t,x)physics(x,system_param,controller(x,system_param,x_f)),time_int,x_i);

display_function(x,x_f,system_param,time_int);