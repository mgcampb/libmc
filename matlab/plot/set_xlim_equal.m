function set_xlim_equal(nrow,ncol,ntot)
% handy funciton to make the xlimits equal on a set of subplots
% MGC 5/22/2022

if ~exist('ntot','var')
    ntot = nrow*ncol;
end
xmax = nan;
xmin = nan;
for i = 1:ntot
    subplot(nrow,ncol,i);
    xmax = max(xmax,max(xlim));
    xmin = min(xmin,min(xlim));
end

for i = 1:ntot
    subplot(nrow,ncol,i);
    xlim([xmin xmax]);
end

end