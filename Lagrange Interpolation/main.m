%Test
a = input('Enter a function relation matrix of the form [a,f(a);b,f(b)] ');
if size(a,2) ~= 2
    disp('invalid start condition');
else
    b = input('value for approx at ');
    compute(a,b);    
end
