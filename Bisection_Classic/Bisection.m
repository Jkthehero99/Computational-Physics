% Bisection Method 
% Needs two starting values a and b such that f(a)*f(b) < 0 


a=input('Enter a: ');
b=input('Enter b: ');

if check_bisect_condition(a,b) == 1
    bisect(a,b);
else
    disp('Please enter a valid start condition')
end
