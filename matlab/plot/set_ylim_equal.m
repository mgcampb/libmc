function set_ylim_equal(nrow,ncol,ntot)
% handy funciton to make the ylimits equal on a set of subplots
% MGC 5/22/2022

if ~exist('ntot','var')
    ntot = nrow*ncol;
end
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