function ysmooth = half_gauss_smooth(y,sigma)
% sets half of gaussian to zero to create a causal half-gaussian filter
% MGC 7/7/2023
    
    if sigma==0
        ysmooth=y;
    else
        N = sigma * 8 + 1;
        alpha = (N-1)/(2*sigma);

        win = gausswin(N,alpha);
        win(1:floor(N/2)) = 0;
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
end