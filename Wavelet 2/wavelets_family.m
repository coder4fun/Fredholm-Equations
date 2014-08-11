function f = wavelets_family ( j , k , t )

f = haar_wavelet(((2.^j)*t) - k );