num = [0.03026, 0];
den = [1, -1.95352, 0.9779];
ts = 0.006188*2;
sys = tf(num,den,ts);
k = [0:0.0001:20]/0.1;
r = rlocus(sys, k);

figure; 
plot(k,abs(r'));
