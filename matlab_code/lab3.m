%lab3


% numerator of open loop system
open_loop_num = [0, 0.2603, 0.2532];
open_loop_den = [1, -1.882, 0.9204];

T = 0.014144;

alpha = 0.9;

G_hat_z_num = conv([1, -1*PI_alpha], open_loop_num);
G_hat_z_den = conv([1, -1], open_loop_den);
G_hat_sys = tf(G_hat_z_num, G_hat_z_den, T);

rlocus(G_hat_sys);

k = 0.0106;
closed_loop_num = k * G_hat_z_num;
closed_loop_den = G_hat_z_den + k * G_hat_z_num;

closed_loop_sys = tf(closed_loop_num,closed_loop_den,T);

step(closed_loop_sys)

k_I = k * (1-alpha);
k_P = k - k_I;

fprintf(1,'T : %.4f,  ki = %.4f,  kp = %.4f,  k = %.4f, alpha = %.4f\n', T, k_I, k_P, k, alpha);
