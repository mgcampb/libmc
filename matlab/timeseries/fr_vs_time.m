function fr = fr_vs_time(st,t,sigma)

dt = mean(diff(t));
fr = histcounts(st,t)/dt;
fr = [fr fr(end)];
fr = gauss_smooth(fr,sigma/dt);

end