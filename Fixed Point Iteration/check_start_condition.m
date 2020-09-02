function [b] = check_start_condition(a)
slope = abs((fun(a+0.00001) - fun(a))/0.00001);
if  slope <= 1
    b = 1;
else
    b = 0;
    disp(slope)
end
end

