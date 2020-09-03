function [y] = check_start_condition(x)
slope = (fun(x+0.00001)-fun(x))/0.00001;
if abs(slope)>0.1
    y=1;
else
    y=0;
end

