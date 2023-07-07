function ysmooth = gauss_smooth(y,sigma)

    if sigma==0
        ysmooth = y;
    else
        N = sigma * 8;
        alpha = (N-1)/(2*sigma);

        win = gausswin(N,alpha);
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