function f = function_approximation_level1( kmin , kmax , j , t)
f = 0;
for k = kmin:kmax 

    tmin = (k/(2.^j));
    tmax = ((k+1)/(2.^j));
        % Evaluating the limits of integration. 

    fun = @(x) input_function(x).*(2.^(j/2));
    q = integral(fun,tmin,tmax);
        % Integrating the function between tmin and tmax.
        
    f = f + (q.*haarwavelet_scaling(((2.^j)*t) - k ));
       
end   
f = (2.^(j/2)) * f ;

