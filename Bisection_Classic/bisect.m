function [c] = bisect(a,b,p)

error = 12; % Initial seed error value to enter the while loop (can be any number greater than precision used.
while error>p
    c=(a+b)/2;
    if check_bisect_condition(a,c) == 1 %check if the root lies between a and c 
        b=c; % if root lies between a and c, replace b with c
    else
        a=c; % if root lies between b and c, replace a with c
    end
    error = abs(b-a); %update error 
end
disp(c)
end

