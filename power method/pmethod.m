
'Power method for finding eigenvalues';
clear;
A=[2 1;1 0];

for i=1:size(A,1)
    x(i)=1;
end
x=x';
xmax1=1000;
xmax2=1;
iterations=0;
error=abs(xmax1-xmax2);
while error >0.001
    iterations=iterations+1;
    x1=A*x;
    xmax2=max(x1)
    x1=x1/xmax2;
    error=abs(xmax2-xmax1);
    x=x1
    xmax1=xmax2;
end
'deflating the matrix to get the next eigenvalue';
for i=1:size(A,1)
    v(i)=1/x(i);
end
v=v/size(A,1);
A1=A-xmax1*(x*v);
for i=1:size(A1,1)
    x2(i)=1;
end
x2=x2';
xmax3=1000;
xmax4=1;
iterations=0;
error=abs(xmax3-xmax4);
while error >0.5
    iterations=iterations+1;
    x3=A1*x2;
    xmax4=max(x3);
    x3=x3/xmax4;
    error=abs(xmax4-xmax3);
    x2=x3;
    xmax3=xmax4;
end
