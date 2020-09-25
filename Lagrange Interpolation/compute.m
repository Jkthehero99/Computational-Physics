function [c] = compute(a,b)
nStartCon = size(a,1);
c = 0;
for i=1:1:nStartCon
    Num = 1;
    Den = 1;
    for j=1:1:nStartCon
        if j~=i
            Num = Num*(b-a(j,1));
        end    
    end
    for k=1:1:nStartCon
        if k ~= i
            Den = Den*(a(i,1)-a(k,1));
        end
    end
    c = c +(Num/Den)*a(i,2);
end
disp(c);
end

