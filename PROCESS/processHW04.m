function [ ] = processHW04( )


%integral method

t=[0 2 4 6 8 10];
c=[10 7.5 5.8 4.6 3.8 3.1];



figure(1)
plot(t, c, '-o', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('c');
title('Concentration vs. Time');
hold on;

p1 = polyfit(t, c, 1);
z = polyval(p1, t);

k=-p1(1)


plot(t, z, '--', 'LineWidth', 1.5);
legend('Concentration Curve', 'Linear Fit');
hold off;

rsquare(c);



figure(2)
f4 = plot(t, log(c), '-o', 'LineWidth', 1.5);
f4.LineWidth = 1.5;
xlabel('Time (s)');
ylabel('log (c)');
title('Log(Concentration) vs. Time');
hold on;

p2 = polyfit(t, log(c), 1);
z = polyval(p2, t);

k=-p2(1)

plot(t, z, '--', 'LineWidth', 1.5);
legend('Concentration Curve', 'Linear Fit');
hold off;

rsquare(log(c));


figure(3)
f5 = plot(t, 1./(c), '-o', 'LineWidth', 1.5);
f5.LineWidth = 1.5;
xlabel('Time (s)');
ylabel('1/c');
title('Inverse Concentration vs. Time');
hold on;

p3 = polyfit(t, 1./c, 1);
z = polyval(p3, t);

k=p3(1)

plot(t, z, '--', 'LineWidth', 1.5);
legend('Concentration Curve', 'Linear Fit');
hold off;

rsquare(1./(c));



 
    function Rsq = rsquare(l)
        %calculation of R square
            cbar = mean(l);
            SStot = sum((l - cbar).^2);
            SSreg = sum((z - cbar).^2);
            SSres = sum((l - z).^2);
            R2 = 1 - SSres/SStot;
            R = corrcoef(t,l);
            Rsq = R(1,2).^2

    end


%differential method



t=[0 2 4 6 8 10];
c=[10 7.5 5.8 4.6 3.8 3.1];



% finding dc/dt with Numerical Method for Differential method
dcdt=[];

    for i= 1:6
    
        if i==1
        dcdt(i) = (-3*c(1)+4*c(2)-c(3))/(2*2);
        
        else if i==6
        dcdt(i) = (c(i-2) - 4*c(i-1) + 3*c(i))/(2*2);

                else
                 dcdt(i) = (c(i+1) - c(i-1))/(2*2);
                end
        end
        
    end

ff=(-1.*dcdt);
fdcdt=log(ff) ;   
 
fc = log(c);
[f coef]=fit(fc',fdcdt','poly1');
figure;
plot (f);
hold on;
plot (fc,fdcdt,'*');

co = coeffvalues(f);

lnk=co(2);
k = exp(lnk)
n=co(1)




%least square method


%%%%% Runge-kutta with least squares is in the sprate folder called
%%%%% HW04least squares


%%%%%%%%%%% from definition of least squares :
%{
t=[0 2 4 6 8 10];
c=[10 7.5 5.8 4.6 3.8 3.1];



% finding dc/dt with Numerical Method for Differential method
dcdt=[];

    for i= 1:6
    
        if i==1
        dcdt(i) = (-3*c(1)+4*c(2)-c(3))/(2*2);
        
        else if i==6
        dcdt(i) = (c(i-2) - 4*c(i-1) + 3*c(i))/(2*2);

                else
                 dcdt(i) = (c(i+1) - c(i-1))/(2*2);
                end
        end
        
    end


ff=(-1.*dcdt);

fdcdt=log(ff) ;   
 
fc = log(c);

%sum ln(c) -->	X
X = sum(fc);

%sum ln(-dc/dt) -->	Y
Y = sum(fdcdt);

%sum ln(c) * ln(-dc/dt) --> XY
XY = sum(fc.*fdcdt);

%sum ln(c)^2 --> X^2
X2 = sum(fc.^2);


%solve(6*a+b*X = Y,x)
%solve(X*a+b*X2 = XY,x)

s = [6 X ; X X2];

z= [Y ; XY];

r = s\z;

% a = ln(k) 
a=r(1);
% k rate cons.
k=exp(a)
% b = n order of the reaction
n=r(2)
%}

end

