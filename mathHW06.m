function [ ] = mathHW06(  )
%
clear
clc

syms a11 a12 a13 a21 a22 a23 a31 a32 a33 b21 b22 b23
A = [a11 a12 a13
     a21 a22 a23
     a31 a32 a33]
B = [a11 a12 a13
     b21 b22 b23
     a31 a32 a33]

C = [a11 a12 a13
     a21+b21 a22+b22 a23+b23
     a31 a32 a33]

detA = det(A)
detB = det(B)
detC = det(C)

detAaB = detA+detB

if detA+detB == detC
   disp('perfect, the results are equal :)') 
end

end

