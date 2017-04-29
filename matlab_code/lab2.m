%% Lab 2

% numerator of open loop system
open_loop_num = [0, 0.2603, 0.2532];
open_loop_den = [1, -1.882, 0.9204];

T = 0.014144;

% the chosen values of k within the stable range
k_stable = [0.2, 0.5, 0.8] * 0.326;

for(k = k_stable)
    closed_loop_num = k * open_loop_num;
    closed_loop_den = open_loop_den + k * open_loop_num;
    
    closed_loop_sys = tf(closed_loop_num,closed_loop_den,T);
    
    figure; step(closed_loop_sys);
    
end