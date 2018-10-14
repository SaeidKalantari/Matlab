function [ ] = processHW05( )
%

tspan = [0 20];
y0=[4,0.2];

[t,y] = ode45(@ecosystem,tspan,y0);
plot(t,y);


xlabel('Time')
ylabel('two polutions')

    
    function [ypr]=ecosystem(t,y)
        ypr = zeros(2,1);
        ypr(1)=(1-2*y(2))*y(1);
        ypr(2)=(y(1)-2)*y(2);
        
        
    end

end

