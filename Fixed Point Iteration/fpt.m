function [y] = fpt(a,p)
error = 10;
while error>p
    a1=fun(a);
    error = abs(a1-a);
    a=a1;
end
y=a;
disp(y);
end

