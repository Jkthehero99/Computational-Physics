function [c] = bisect(a,b)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
error = 12;
while error>1e-7
    c=(a+b)/2;
    if check_bisect_condition(a,c) == 1
        b=c;
    else
        a=c;
    end
    error = abs(b-a);
end
end

