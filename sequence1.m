%let x(n)={1,2,3,4,5,6,7,6,4,3,2,1,}determine and plot the fowing sequences
%xl(n)=2x(n-3)-3x(n+4)
clc;
clear all;
close all;

n=-2:10;
x=[1,2,3,4,5,6,7,6,5,4,3,2,1];
n1=3:15;
n2=-6:6;
m=min(min(n1),min(n2)):max(max(n1),max(n2));
y1=[];
temp=1;
for i=1:length(m)
    if (m(i)<min(n1) || m(i)>max(n1))
        y1=[y1 0];
    else
        y1=[y1 x(temp)];
        temp=temp+1;
    end
end

y2=[];
temp=1;
for i=1:length(m)
    if (m(i)<min(n2) || m(i)>max(n2))
        y2=[y2 0];
    else
        y2=[y2 x(temp)];
        temp=temp+1;
    end
end
subplot(3,1,1);
stem(m,2.*y1);
grid on;
title('2X(n-5) signal');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,2);
stem(m,3.*y2);
grid on;
title('3X(n+4)');
xlabel('n');
ylabel('Amplitude');

y=(2.*y1)-(3.*y2);
subplot(3,1,3);
stem(m,y);
grid on;