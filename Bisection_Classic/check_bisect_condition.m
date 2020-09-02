function [x] = check_bisect_condition(a1,b1)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
x = (fun(a1)*fun(b1) <= 0) ;
end