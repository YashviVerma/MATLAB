clear
n=1:100;
l = length(n);
Y = zeros(l,1)

str=input('Enter the Signal function in terms of n: ','s')
y = inline(str,'n') ; %inputted signal

for i=1:l
    Y(i)=feval(y,i);  %discrete points of signal
end

fourier = dft(Y)      %fourier transformation without fft 

plot(n,Y)
title('plot of the signal')
figure;
plot(n,abs(fourier));
title('plot of fourier transform of signal without fft')
figure;

%proof of Parseval"s theorem
LHS=sum(abs(Y.*Y)); %sum of square of function
disp('LHS is:')
disp(LHS)

RHS=sum(abs(fourier.*fourier))/l;  %sum of the square of transform
disp('RHS is:')
disp(RHS)
disp(' Since,LHS=RHS,Parseval"s theorem is proved!')

