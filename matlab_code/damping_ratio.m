function [ damped_ratio ] = damping_ratio( percent_overshoot )
%DAMPING_RATIO Summary of this function goes here
%   Detailed explanation goes here
log_pct_overshoot_sqr = log(percent_overshoot/100).^2;
damped_ratio = (log_pct_overshoot_sqr ./ ( pi^2 + log_pct_overshoot_sqr)).^0.5;

end

