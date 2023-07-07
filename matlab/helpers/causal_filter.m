function ysmooth = causal_filter(y,rg,rd)
% Modeled after Thompson et al 1996

    N = max(rg,rd) * 8;
    t = 0:N;
    win = (1-exp(-t/rg)).*exp(-t/rd);
    win = [zeros(1,numel(win)-1) win];
    win = win/sum(win);

    % pad the ends
    if isrow(y)
        y2 = [y(1)*ones(1,N) y y(end)*ones(1,N)];
    else
        y2 = [y(1)*ones(N,1); y; y(end)*ones(N,1)];
    end

    ysmooth = conv(y2,win,'same');
    ysmooth = ysmooth(N+1:end-N);
end