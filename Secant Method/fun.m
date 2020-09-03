function [y] = fun(x)
%y = x^2 - 5*x - 4;
%y = cot(x) + 20*cos(x) - 20;
y = (200*sin(x)*(1-cos(x)))/(9.8*cos(x));
end

