function [y] = fpt(a,p,limit)
error = 10;
count = 0;
if limit == -1
    limit = 1000;
end
while error>p && count<limit
    a1=fun(a);
    error = abs(a1-a);
    a=a1;
    count = count +1;
end
y=a;
disp(y);
disp(count);
end

