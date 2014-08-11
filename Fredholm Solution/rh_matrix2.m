function R = rh_matrix2(k , t )
% RH_MATRIX2 : Appends the rows of the rationalized_haar_value function.
%
% Usage : RH_MATRIX2(k  t );
%
% Arguments( input ):
% k : To determine the number of rows to be appended.
% t : To determine the value of the function at the point t.
% 
% Arguments( output ):
% R : Resultant matrix form (A column matrix).
% 
% Note : The function uses RATIONALIZED_HAAR_VALUE funtion .

for r = 0:(k-1)
    if( r ==0)
       R = rationalized_haar_value( r , t ) ;
        % Defining the first row of the k*K matrix.
    else    
        q = rationalized_haar_value( r , t ) ;  
        R = [R;q];
         % Adding the rows to the matix iteratively.
    end           
end