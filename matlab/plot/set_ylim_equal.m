function set_ylim_equal(nrow,ncol)
% handy funciton to make the ylimits equal on a set of subplots
% MGC 5/22/2022

ntot = nrow*ncol;
ymax = nan;
ymin = nan;
for i = 1:ntot
    subplot(nrow,ncol,i);
    ymax = max(ymax,max(ylim));
    ymin = min(ymin,min(ylim));
end

for i = 1:ntot
    subplot(nrow,ncol,i);
    ylim([ymin ymax]);
end

end