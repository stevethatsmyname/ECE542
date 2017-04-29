%%% ECE_542 lab 1
cont_tf_num = [2683.1]
cont_tf_den = [1, 5.863, 198.45]
ct_system = tf(cont_tf_num, cont_tf_den);

Ts = 0.014144;
dt_system = c2d(ct_system, Ts);

dt_num = dt_system.Numerator{1};
dt_den = dt_system.Denominator{1};

[Z, P, K] = tf2zp(dt_num, dt_den)

step(dt_system);


