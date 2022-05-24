function auroc = auroc_spkcts(y,bl)
% auroc for spike counts versus baseline
% MGC 5/17/2022

% y = matrix of spikecounts (rows = trials, columns = timepoints)
% bl = matrix of baseline spikecounts

bl = reshape(bl,numel(bl),1);

auroc = nan(1,size(y,2));

for i = 1:numel(auroc)
    minct = min([y(:,i); bl]);
    maxct = max([y(:,i); bl]);
    nbin = 100;
    binedge = linspace(minct,maxct,nbin);
    pbl = nan(nbin,1);
    py = nan(nbin,1);
    for j = 1:nbin
        pbl(j) = sum(bl>=binedge(j))/numel(bl);
        py(j) = sum(y(:,i)>=binedge(j))/size(y,1);
    end
    auroc(i) = trapz(sort(pbl),sort(py));
end

end