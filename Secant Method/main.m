a = input('Enter a starting value');
p = input('Enter precission required');

if check_start_condition(a) == 1
    newraph(a,p);
else
    disp('Please enter a valid start condition');
end
