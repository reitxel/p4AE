function [ elev ] = testfunction( loc )
% Cost function for the landscape example 
% [elev] = testfunction(loc)
[m,n] = size(loc);
    for i=1:m
        x =loc(i,1); 
        if x > 10
        x = 10; 
        elseif x < 0
        x = 0; 
        end
        
        y = loc(i,2);
        if y > 10
        y = 10; 
        elseif y < 0
        y = 0; 
        end
    end
elev(i) = x*sin(4*x) + 1.1*y*sin(2*y); 
end