function R = rationalized_haar_matrix( r , k )
% RATIONALIZED_HAAR_MATRIX : Evaluates the rationalized haar function as a matrix 
% Usage : R = RATIONALIZED_HAAR( r, t)
%
% Arguments (input):
% r : r = (2^i) + j -1 , i = 0,1,2... & j = 0,1,2,...,(2^i)
%
% k : To determine the number of intervals of the function i.e. the number
% of columns of the matrix
%
% Arguments (output):
% R : Rationalised haar matrix is the matrix form of Rationalised haar function 
%
%Rationalised haar function defined as follows :
% y = 1  , j1 <= t < jh , 
% y = -1 , jh <= t < j0 ,
% y = 0  , Otherwise
% 
% Here ju = ( j - u ) / (2^i) , u = 0 , 1 , h(0.5).
%
% Example usage : 
% if r = 1 , k = 4
% i = 0 & j = 1
% Hence, j1 = 0 , j0 = 1 , jh =  0.5
% y = 1  , 0 <= t < 0.5 , 
% y = -1 , 0.5 <= t < 1 ,
% y = 0  , Otherwise
% 
% y = rationalized_haar( 1 , 4 )
% 
% output will be y = 1  1   -1   -1 
n = (1 / k);
       % Number of intervels is k. So, length of intervel is (1/k).  
if ( r == 0 )
   R = piecewise_eval(0:n:(1-n),  0.5  , { 1 , 1 } );
       % Number of intervels is k. So, length of intervel is (1/k). 
else    
    i = 0;
    while( (2^i) < ( r + 1)) 
        % Running the while loop (k-1) times
        i = i + 1;
    end
    i = i - 1;
    j = ( r + 1 ) - (2^i);
        % defining the intervels j0 ,j1 ,and jh(jhalf)
    j0=(j/(2^i));
    jh=((j-0.5)/(2^i));
    j1=((j-1)/(2^i));
    n = (1 / k);
    R = piecewise_eval(0:n:(1-n), [ j1 , jh , j0 ] , { 0 , 1 , -1 , 0 } );
         % defining the function for r!=0   
end