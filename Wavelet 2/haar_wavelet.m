function psi = haar_wavelet( t )
psi = piecewise_eval( t , [ 0 , 0.5 , 1 ] , { 0 , 1 , -1 , 0 });