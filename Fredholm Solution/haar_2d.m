function H = haar_2d(k)
%  HAAR_2D : Evaluates the two-dimentional haar function
%
% Usage : HAAR_2D( k )
%
% Arguments (input):
% k : To determine the number of intervals of the function i.e. the number
% of columns of the matrix
%
% Arguments (output):
% H : Two dimentional haar matrix is the matrix.
% H is defined as follows :
% H = (Ri') * Hcap * Ri.
% where Ri : inverse of RH matrix defined by 
%            Ri = (1/k) * (R' * D).
%            where R : RH matrix.
%                  D : Diagonal Matrix with index 1.
%       Hcap = Matrix of kernel ((2l-1/2k),(2p-1/2k)) .
% 
% Note : The function uses rh_matrix function and diagonal_matrix function
% with index = 1

for l = 1:k
   for p = 1:k
      
      x = (((2*l)-1)/(2*k));
      y = (((2*p)-1)/(2*k));
            % Defining x and y co-ordinates.
      Hcap(l,p) = kernel( x , y );
            % Defining the elements of Hcap matrix.
   end    
end   
R = rh_matrix(k);
D = diagonal_matrix( k , 1);

Ri = (1/k) * (R' * D); 
            % Defining the inverse of RH matrix.

H = ((Ri')*(Hcap*Ri)); 
            % defining the 2-d haar function.