function [ ] = processHW02( )
%ODE FUNCTION


[t,y] = ode45(@myode,[0,4],2);

figure;
plot(t,y,'o');
xlabel('Time')
ylabel('y')

   
hold on;

plot(t,fy(t),'r:');
xlabel('Time')
ylabel('y')

    
    
    function dydt = myode(t,y)
        dydt=-0.5*y+4*(exp(0.8*t));
    end


    function fy = fy(t)
        fy=(4/1.3)*(exp(0.8*t)-exp(-0.5*t))+(2*exp(-0.5*t));
    end

end

