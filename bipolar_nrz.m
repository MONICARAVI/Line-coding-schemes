b = input('Enter bit message');
l=length(b);
b(l+1)=1;
n = 1;
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
count=1;
parity=1;
subplot(3,1,3);
while n<length(b)
    t=n-1:0.001:n;
    if b(n) == 0
        if b(n+1)==0  
            y=(t>n);
       
        else
            y=parity*(t==n);
        end
    else
        if b(n+1)==0
            y=parity*(t<n);
        else
            y=parity*(t<n)-parity*(t==n);
        end 
    end
    if b(n)==1
        count = count+1;
    end
    if mod(count,2)
        parity = 1;
    else
        parity = -1;
    end
    d=plot(t,y);grid on;
    title('Line code BIPOLAR NRZ reg no:68');
    set(d,'LineWidth',2.5);
    hold on;
    n=n+1; 
end
