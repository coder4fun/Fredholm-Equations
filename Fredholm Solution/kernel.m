function k = kernel( t , s)
% Inputs k  function
%p = ( t * s );
%k = exp( p );

if(t <= s)
   k = t;
else
   k = s;
end
%k = input('Enter the kernel in terms of t , s \n' );