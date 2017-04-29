%start with the continuous time system
continous_time_num = [2211.5];
continuous_time_den = [1, 2.407, 178.35];
continuous_time_sys = tf(continous_time_num, continuous_time_den);

% poles:
%   -1.2035 +13.3004i
%   -1.2035 -13.3004i

%given the natural frequency of the only pair of poles is about 13.3
%rad/sec.
% We would like to sample at a frequency at around  fs = 30 * w_n / (2*pi) 

% sample at a frequency around 63Hz
T =  0.012376; %FS is 83.3 Hz

discrete_sys = c2d(continuous_time_sys, T, 'zoh');

disc_num = discrete_sys.num{1}
disc_den = discrete_sys.den{1}

k = 0.1;

% proportional control
T_c_z_num = k * disc_num
T_c_z_den = disc_den + k*disc_num

dc_gain = sum(T_c_z_num) / sum(T_c_z_den)

expected_output = 2000 * dc_gain

[closed_loop_zeros, closed_loop_poles] = tf2zp(T_c_z_num, T_c_z_den)

pole_radius = abs(closed_loop_poles)


%PI control
PI_alpha = 0.8; %PI zero location
G_hat_z_num = conv([1, -1*PI_alpha], disc_num)
G_hat_z_den = conv([1, -1], disc_den);

kp = 0.01;  
PI_T_c_z_num = kp * G_hat_z_num
PI_T_c_z_den = G_hat_z_den + kp * G_hat_z_num
PI_system = tf(PI_T_c_z_num, PI_T_c_z_den, T);

[PI_zeros PI_poles] = tf2zp(PI_T_c_z_num, PI_T_c_z_den)

pole_radius = abs(PI_poles)

figure; rlocus(G_hat_z_num, G_hat_z_den);
hold on; 


% draw a unit circle
t = 0:0.001:2*pi;
x = sin(t); y = cos(t);
plot(x,y,'k--','linewidth',1);

axis([0.7, 1.2, -0.3, 0.3]);


% draw the particular poles for this value of k
plot(PI_poles,'k.','markersize',20)

figure; step(PI_system);

% 
% num = [0.03026, 0];
% den = [1, -1.95352, 0.9779];
% ts = 0.006188*2;
% sys = tf(num,den,ts);
% k = [0:0.0001:20]/0.1;
% r = rlocus(sys, k);
% 
% figure; 
% plot(k,abs(r'));


KI = (kp) * (1-PI_alpha);
KP = kp - KI;
fprintf(1,'T = %.4f, KP = %.4f, KI = %.4f \n',T, KP,KI);
% 