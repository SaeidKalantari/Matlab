function [ ] = mathHW02( )
%
format short
clear 
clc
sin(pi/2)
syms b 
t = (pi/2)+b
A=[(cos(t)^2) cos(t)*sin(t); sin(t)*cos(t) sin(t)^2]

B = [cos(b)^2 cos(b)*sin(b); sin(b)*cos(b) sin(b)^2]

C = A*B

C = simplify(C)




end

