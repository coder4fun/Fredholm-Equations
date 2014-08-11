function D = diagonal_matrix( k , index)
% DIAGONAL_MATRIX : evaluates the diagonal matrix D.
%
% Usage : DIAGONAL_MATRIX( k , index ).
%
% Arguments (input):
% k     : To determine the number of intervals of the function i.e. the number
%         of columns of the matrix.
% index : +1 or -1 in order to use it in two different situations.
% 
% Arguments (output):
% D : Diaonal matrix consisting of elements in the sequence:
%     1,1,2,2,4,4,4,4,...
%
% For example :
% If k = 4 and index = 1
% D =   1   0   0   0
%       0   1   0   0
%       0   0   2   0
%       0   0   0   2
%
% D = diagonal_matrix( 4 , 1 )

t = 0;
    % Declaring initial value of t (= 0).
for i = 1:k
    for j = 1:k
       if( i == j )
            D(i,j) = (2^(t*index));
                % Defining the diagonal elements.
       else
            D(i , j) = 0;
                % Defining the remaining elements of the matrix as 0's.
        end
    end
    if( ((log(i)/log(2))-1) == t )
        t = t+1;
            % Incrementing t after 2*t times.
    end    
end