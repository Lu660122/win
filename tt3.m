f0=2;
t=0:.0001:2.5;
w0=2*pi*f0;
y=square(w0*t,50);
plot(t,y);
axis([0,2.5,-1.5,1.5])
X = awgn(X,10,'measured');  
sigPower = sum(abs(X).^2)/length(X)            
noisePower=sum(abs(Y-X).^2)/length(Y-X)   
SNR=10*log10(sigPower/noisePower)          
figure
plot(Y,'m');
hold on
plot(X,'k')
title('Sinusoidal Signal Mixed with Noise')
xlabel('Data point n')
ylabel('Amplitude A')
var(Y-X)