function set_axlim_equal(nrow,ncol,ntot)
% handy funciton to make the xlimits and ylimits equal on a set of subplots
% MGC 5/22/2022

if ~exist('ntot','var')
    ntot = nrow*ncol;
end
xmax = nan;
xmin = nan;
ymax = nan;
ymin = nan;
for i = 1:ntot
    subplot(nrow,ncol,i);
    xmax = max(xmax,max(xlim));
    xmin = min(xmin,min(xlim));
    ymax = max(ymax,max(ylim));
    ymin = min(ymin,min(ylim));
end

for i = 1:ntot
    subplot(nrow,ncol,i);
    xlim([xmin xmax]);
    ylim([ymin ymax]);
end

end