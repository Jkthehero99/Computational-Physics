a = input('Enter a starting value: ');
p = input('Enter precission required (example 1e-3): ');
z = input('Enter iteration limit (-1 if no limit) :');
if check_start_condition(a) == 1
    newraph(a,p,z);
else
    disp('Please enter a valid start condition');
end
