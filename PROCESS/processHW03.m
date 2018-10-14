function [ ] = processHW03( )
%algabric method to determine the rate and the order of the reaction

Q=[0.1 0.2 0.4 0.8 1.6];

C=[23 30 40 52 64];
cin=100;



r = (Q.*cin - Q.*C)/1;


fr=log(r);
fc=log(C);

[f coef]=fit(fc',fr','poly1')
figure;
plot(f);
hold on;
plot(log(C),log(r),'*');

co = coeffvalues(f);

lnk=co(2);
%%%%k = 1/hr
k = exp(lnk)
n=co(1)


end

