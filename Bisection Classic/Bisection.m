%{
  Bisection Method
  Author: Jai Krishna
  Can find the real roots for a given function f(x) with adjustable decimal
  precission, provided two values a and b are given as the inital values  
  such that f(a)*f(b) <=0.
%}

a=input('Enter a: '); 
b=input('Enter b: ');
p=input('Enter prescission needed(example 1e-3): ');

if check_bisect_condition(a,b) == 1 %verify if the bisection condition is satisfied or not
    bisect(a,b,p);
else
    disp('Please enter a valid start condition')
end
