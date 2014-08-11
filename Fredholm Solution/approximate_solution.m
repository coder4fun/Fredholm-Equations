function y = approximate_solution(k,t)
% APPROXIMATE_SOLUTION : Evaluates the solution for a particular  k , t values. 
%
% Usage : APPROXIMATE_SOLUTION( K , t).
%
% Arguments( Input ):
%
% k : A multiple of 2 used to approximate y. More the value of 'k' more
%     accurate the value of y would be compared to exact soltion.
% t : Value at which the function is evaluated. 
%
% Arguments( Output ):
%
% y : Evaluates the given function for a particular k , t values using the
%     rationalized haar function.
%
% For example :
%   If k = 16 and t = 0
%   y = 0.0579
%   
% y = approximate_solution( 16 , 0 );
%
% Note :The functions integral_matrix, haar_2d, diagonal_matrix are used.

X = integral_matrix(k);
        % Defining the X - matrix.
H = haar_2d( k );
        % Defining the 2-D Haar function.
D = diagonal_matrix(k , -1);
        % Defining the diagonal matrix.
I = eye(k);
        % Defining the Identity matrix.
M = (I - (H*D));
        % Evaluating ( I - HD ) value
Y = M\X ;
        % Evaluating the Y- matrix.
R2 = rh_matrix2(k,t);
        % Defining the RH column matrix.
y = (R2') * Y;
        % Evaluating the value of y.
