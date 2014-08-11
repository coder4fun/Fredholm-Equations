function y = integrala( r )
%INTERALA evaluates the approximation of the function f(t) defined over the
%interval [0,1) expanded in RH function.
%
% Usage : y = INTEGRALA( r , k )
%
% Arguments (input):
% r : r = (2^i) + j -1 , i = 0,1,2... & j = 0,1,2,...,(2^i) ( from the RH
% function)
%
%  Arguments( output):
% y : The value evaluated using the RHfunction and  for a  particular 'r'
%
% For example 
% if r = 0 
% y = 4.4911 
%
% y = integrala( 0 , 4 ) 
%
% Note:The function uses x_function which is the input x-function and the
% rationalized_haar_value function which gives the RH fnction.
if ( r == 0 )
   xfun = @(t) x_function(t);
        % Importin the x-function into a local variable xfun.
   q = integral(xfun,0,1);
        % Integrating the function between 0 and 1. 
   y = q;
        % Defining the function for r = 0.
   
else    
    i = 0;
    while( (2^i) < ( r + 1))     
        % Running the while loop (k-1) times.
        i = i + 1;
    end
    i = i - 1;
    
    xfun = @(t) (x_function(t).*rationalized_haar_value(r,t));
        % Importing the X-function into a local variable xfun.
    q= integral(xfun,0,1);
        % Integrating the function between 0 and 1. 
   
    y = (2^i)*q;
       % defining the function for r != 0.    
end

