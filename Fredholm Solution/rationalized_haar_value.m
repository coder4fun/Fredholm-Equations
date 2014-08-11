function y = rationalized_haar_value(r,t)
% RATIONALIZED_HAAR_VALUE : Evaluates the rationalized haar function 
% Usage : R = RATIONALIZED_HAAR_VALUE( r, t)
%
% Arguments (input):
% r : r = (2^i) + j -1 , i = 0,1,2... & j = 0,1,2,...,(2^i)
%
% t : To determine the value of the function at the point t
%
% Arguments (output):
% y : Rationalised haar value evaluates the Rationalised haar function 
%
% Rationalised haar function defined as follows :
% y = 1  , j1 <= t < jh , 
% y = -1 , jh <= t < j0 ,
% y = 0  , Otherwise
% 
% Here ju = ( j - u ) / (2^i) , u = 0 , 1 , h(0.5).
%
% Example usage : 
% if r = 1 , t = 0
% i = 0 & j = 1
% Hence, j1 = 0 , j0 = 1 , jh =  0.5
% y = 1  , 0 <= t < 0.5 , 
% y = -1 , 0.5 <= t < 1 ,
% y = 0  , Otherwise
% 
% y = rationalized_haar( 1 , 0 )
% 
% output will be y = 1   
    
if( r == 0)
   y = 1;
        % Defining the value for r = 0.
else    
    i = 0;
   while( (2^i) < ( r + 1))     
        % Running the while loop (k-1) times
        i = i + 1;
    end
    i = i - 1;
        % Evaluating 'i' using the 'r' value.
    j = r - (2^i) + 1;     
        % Evaluating 'j' using the 'r' and 'i' values.

    j0=(j/(2^i));
    jh=((j-0.5)/(2^i));
    j1=((j-1)/(2^i));
        % Evalating the intervels.
    y = piecewise_eval(t,[j1 jh j0],{ 0, 1, -1, 0});
        % Defining value of y for given t.
end