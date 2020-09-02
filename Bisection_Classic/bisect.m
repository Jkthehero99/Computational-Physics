function [c] = bisect(a,b,p)

error = 12; % Initial seed error value to enter the while loop (can be any number greater than precision used.
while error>p
    c=(a+b)/2;
    if check_bisect_condition(a,c) == 1
        b=c;
    else
        a=c;
    end
    error = abs(b-a);
end
end

