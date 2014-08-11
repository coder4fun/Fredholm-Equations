function f = function_approximation_wavelet_level1( kmin , kmax , t)

f1 = @(x) input_function(x);
d0 = (integral(f1 , 0 , 0.5 ) - integral(f1, 0.5, 1))*2^0.5;
%for k = kmin:kmax
    

f = function_approximation_level1( kmin , kmax , 1, t ) + ( d0 );

