function X = integral_matrix(k)
% INTERAL_MATRIX : Appends the rows of the 'integrala' function.
%
% Usage : INTEGRAL_MATRIX(k);
%
% Arguments( input ):
% k : To determine the number of rows to be appended.
% 
% Arguments( output ):
% X : Resultant matrix form (A column matrix).
% 
% Note : The function uses INTEGRALA funtion .

for r = 0:(k-1)
    if( r ==0)
       X = integrala( r );
            % Defining the first row of the k*K matrix.
    else    
        q = integrala( r );
        X = [X;q];
            % Adding the rows to the matix iteratively.
    end           
end
