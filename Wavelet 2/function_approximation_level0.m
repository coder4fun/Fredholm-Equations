function f = function_approximation_level0( kmin , kmax , t)
f = 0;
for k = kmin:kmax 

    tmin = k;
    tmax = (k+1);
        % Evaluating the limits of integration. 

    fun = @(x) input_function(x);
    q = integral(fun,tmin,tmax);
        % Integrating the function between tmin and tmax.
        
    f = f + (q.*haarwavelet_scaling(t - k));
       
end   