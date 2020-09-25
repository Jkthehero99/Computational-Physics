function [c,count] = bisect(a,b,p,limit)

error = 12;% Initial seed error value to enter the while loop (can be any number greater than precision used.
count = 0;
if limit == -1 
    limit = 1000;
end
while error>p && count<limit
    c=(a+b)/2;
    if check_bisect_condition(a,c) == 1 %check if the root lies between a and c 
        b=c; % if root lies between a and c, replace b with c
    else
        a=c; % if root lies between b and c, replace a with c
    end
    error = abs(b-a); %update error 
    count=count+1;
end
disp(c)
disp(count)
end

