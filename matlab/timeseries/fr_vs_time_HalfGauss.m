function fr = fr_vs_time_HalfGauss(st,t,sigma)
% uses causal half-gaussian filter instead of acausal gaussian filter to
% smooth firing rate trace
% MGC 7/7/2023

dt = mean(diff(t));
fr = histcounts(st,t)/dt;
fr = [fr fr(end)];
fr = half_gauss_smooth(fr,round(sigma/dt));

end