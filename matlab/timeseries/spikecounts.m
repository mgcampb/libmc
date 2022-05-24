function [spkcts, t] = spikecounts(spiket,trigger,tbefore,tafter,tbin)
% makes a matrix of spikecounts aligned to trigger
% MGC 5/12/2022

nbin = (tbefore+tafter)/tbin;
binedge = repmat(trigger,1,nbin+1);
binedge = binedge + (-tbefore:tbin:tafter);
binedge = sort(reshape(binedge,numel(binedge),1));
spkcts = histcounts(spiket,binedge);
keep = true(size(spkcts));
keep(nbin+1:nbin+1:end) = false;
spkcts = spkcts(keep);
spkcts = reshape(spkcts,nbin,numel(spkcts)/nbin);
spkcts = spkcts';
t = -tbefore+tbin/2:tbin:tafter-tbin/2;

end