clc;
clear all;
close all;

n1=-2:1;
n2=0:3;
n3=-2:2;
x=[1,2,3,4];
y=[1,1,1,1];
z=[-2,3,0,1,5];
range=min(min(n1),min(n2)):max(max(n1),max(n2));
y1=[];
t1=1;
for i=1:length(range)
    if(range(i)<min(n1) || range(i)>max(n1))
        y1=[y1 0];
    else
        y1=[y1 x(t1)];
        t1=t1+1;
    end
end
y2=[];
t2=1;
for i=1:length(range)
    if(range(i)<min(n2) || range(i)>max(n2))
        y2=[y2 0];
%shifting signal
    else
        y2=[y2 y(t2)];
        t2=t2+1;
    end
end
subplot(5,1,1);
stem(n1,x);
grid on;
title('X-Signal');
xlabel('n');
ylabel('Amplitude');

subplot(5,1,2);
stem(n2,y);
grid on;
title('Y-Signal');
xlabel('n');
ylabel('Amplitude');

y3=y1.*y2 ;
subplot(5,1,3);
stem(range,y3);
grid on;
title('multiplication of two signal');
xlabel('n---');
ylabel('amplitude');

subplot(5,1,4);
stem(n3,z);
grid on;
title('Z-Signal');
xlabel('n');
ylabel('Amplitude');


n=n3+2;
subplot(5,1,5);
stem(n,z);
grid on;
title('shifting signal');
xlabel('n---');
ylabel('amplitude');
