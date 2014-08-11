clear all
close all
clc

kmin = input('Enter the minimum value of k\n');
kmax = input('Enter the maximum value of k\n');
j = input('Enter the value of j\n');

t = -4:.1:4;
f = function_approximation_wavelet_level2( kmin , kmax , j,t);
plot(t,f);
hold all
plot(t, input_function(t));