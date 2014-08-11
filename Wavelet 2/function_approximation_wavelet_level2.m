function f = function_approximation_wavelet_level2( kmin , kmax , j , t)
dp = 0;
for j1 = 0:j 
for n = 0:((2 ^j1) - 1)

   % i = ( kmax - kmin )./ ( 2.^j1);
    %k = n.* i;
    dp1 = 0;
    for k = kmin:kmax
    tmin = ( k /(2.^j1));
    tint = ( (k + 0.5) /(2.^j1));
    tmax = ((k+1)/(2.^j1));
    
    fun = @(x) input_function(x);
    q1 = integral(fun,tmin,tint);
    q2 = integral(fun,tint,tmax);
        % Integrating the function between tmin and tmax.
   
    dp1 = dp1 + ((q1 - q2) .* haar_wavelet(((2.^j1)*t) - k ) );
    end
    dp = dp+dp1;
end
end
f = function_approximation_level0( kmin , kmax , t ) +  dp ;
