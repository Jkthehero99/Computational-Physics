function [a1] = newraph(a,p)
error = 12;

while error>p
    a1=a-fun(a)*0.00001/(fun(a+0.00001)-fun(a));
    error = abs(a1 - a);
    a=a1;
end
disp(a1)
end


