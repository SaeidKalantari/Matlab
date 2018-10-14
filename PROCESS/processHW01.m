function [ AC ] = processHW01( )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Z=[0 4 8 12 16];
A=[9.81 5.10 1.96 0.39 0.00];
C=[10.2 8.5 7.4 5.2 4.1];
t=0:0.1:16;
ac = A.*C;

ac = interp1(Z,ac,t,'spline');

a1 = trapz(t,ac);

a = interp1(Z,A,t,'spline');

a2 = trapz(t,a);   

AC=a1/a2;

end

