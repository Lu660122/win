 ///////SNR=-10:10//////
for i=1:length(SNR); 
    Ynt3=awgn(y,SNR(i));	
Z=ddemod(Ynt3,Fc,Fd,Fs,'fsk',2);
 [br, Pe(i)]=symerr(x,Z);
%对解调后加大噪声信号误码分析，brend
figure(9)
semilogy(SNR,Pe);			xlabel('信噪比 SNR(r/dB)');
ylabel('误码率 Pe');
title('信噪比与误码率的关系');
% axis([-10 10 0 1])
% grid on
% axis([1 21 -1 2])
grid on