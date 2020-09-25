function [a1] = newraph(a,p,limit)
error = 12;
count = 0;
if limit == -1
    limit = 1000;
end
while error>p && count<limit
    a1=a-fun(a)*0.00001/(fun(a+0.00001)-fun(a));
    error = abs(a1 - a);
    a=a1;
    count = count + 1;
end
disp(a1)
disp(count)
end


