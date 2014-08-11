function R = rh_matrix(k)
% RH_MATRIX : Appends the rows of the rationalized_haar_matrix function.
%
% Usage : RH_MATRIX(k);
%
% Arguments( input ):
% k : To determine the number of rows to be appended.
% 
% Arguments( output ):
% R : Resultant matrix form.
% 
% Note : The function uses RATIONALIZED_HAAR_MATRIX funtion .
for r = 0:(k-1)
   if( r ==0)
       R = rationalized_haar_matrix( r, k );
       % Defining the first row of the k*K matrix.
    else    
        y = rationalized_haar_matrix( r , k );
        R = [R;y];
        % Adding the rows to the matix iteratively.
   end     
end