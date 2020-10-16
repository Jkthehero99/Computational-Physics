temp = 0;
d=input('Enter Data Points');
N=size(d,1);
n=input('Enter degree of polynomial');
%% Preparing Matrix A
A=zeros(n+1,n+2)+1;
sumX = zeros(1,2*n)+1;
sumY = zeros(1,n+1)+1;
%% Calculating Sigman(X^i)
for i=1:2*n
    for j=1:N
        temp = temp + d(j,1)^i;
    end
    sumX(1,i) = temp;
    temp = 0;
end
%% Calculating Sigman(X^i)*Y
for i=1:n+1
    for j=1:N
        temp = temp + (d(j,1)^(i-1))*d(j,2);
    end
    sumY(1,i) = temp;
    temp = 0;
end
%% Populating matrix A except n+2th column
for i=1:n+1
    for j=1:n+1
        if i == 1 && j == 1
            A(i,j) = N;
        else
            A(i,j)=sumX(1,i+j-2);
        end
    end
end
%% Populating n+2th column in A 
for i=1:n+1
    A(i,n+2)=sumY(1,i);
end
