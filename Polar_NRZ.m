b = input('Enter bit message');
n =1;
l=length(b);
b(l+1)=1;
while n<length(b)
t=n-1:0.001:n;
y = t<=(n-0.5)+(t==n);
subplot(3,1,1);
d=plot(t,y);grid on;
title('CLOCK');
set(d,'LineWidth',2.5);
hold on;
axis([0 length(b)-1 -1 1.5]);
n=n+1;
end
n=1;
subplot(3,1,2);
while n<length(b)
t=n-1:0.001:n;
if b(n) == 0
if b(n+1)==0 
y=(t>n);
else
y=(t==n);
end
else
    if b(n+1)==0
        y=(t<n);
    else
        y=(t<=n);
    end 
end
    
    d=plot(t,y);grid on;
    title('BINARY DATA');
    set(d,'LineWidth',2.5);
    hold on;
    n=n+1; 
end
n=1;
subplot(3,1,3);
while n<length(b)
    t=n-1:0.001:n;
if b(n) == 0
    if b(n+1)==0  
        y=-(t<n)-(t==n);
    else
        y=-(t<n)+(t==n);
    end
else
    if b(n+1)==0
        y=(t<n)-1*(t==n);
    else
        y=(t<n)+1*(t==n);
    end 
end
    d=plot(t,y);grid on;
    title('Line code POLAR NRZ');
    set(d,'LineWidth',2.5);
    hold on;
    axis([0 length(b)-1 -1.5 1.5]);
n=n+1; 
end
