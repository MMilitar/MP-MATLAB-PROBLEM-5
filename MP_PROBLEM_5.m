%PLOTTING FUNCTION X
n = 0:1:199;
x = input('INPUT FUNCTION x(n): ');
plot(n,x,'--g.','linewidth',3,'markersize',3);
hold on;

%PLOTTING FUNCTION Y
for z = 1:1:200 %LET z=n BUT +1 SINCE IT WON'T RUN IF IT STARTS AT 0
    if z == 1
        y = -1.5.*x(z) + 2.*x(z+1) - 0.5.*x(z+2);
        plot(z,y,'--m.');
    end
    
    if z > 1 && z <= 199
        y = 0.5.*x(z+1) - 0.5.*x(z-1);
        plot(z,y,'--m.');
    end
    
    if z == 200    
        y = 1.5.*x(z) - 2.*x(z-1) + 0.5.*x(z-2);
        plot(z,y,'--m.');
    end
end
%LABELING THE GRAPHS
legend('x','y');



    

