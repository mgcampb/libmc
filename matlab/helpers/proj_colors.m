function proj_col = proj_colors(n)
    % color scheme for projection targets:
    plot_col_all = lines(7);
    proj_col = nan(n,3);
%     if n==4
%         proj_col(1,:) = plot_col_all(7,:);
%         proj_col(2,:) = plot_col_all(5,:);
%         proj_col(3,:) = plot_col_all(1,:);
%         proj_col(4,:) = plot_col_all(4,:);
%     elseif n==5
%         proj_col(1,:) = plot_col_all(7,:);
%         proj_col(2,:) = plot_col_all(5,:);
%         proj_col(3,:) = plot_col_all(1,:);
%         proj_col(4,:) = plot_col_all(3,:);
%         proj_col(5,:) = plot_col_all(4,:);
%     end
    
    proj_col(1,:) = [1 0 0];
    proj_col(2,:) = [0 1 0];
    proj_col(3,:) = [0 0 1];
    if n==4        
        proj_col(4,:) = [1 0 1];
    elseif n==5
        proj_col(4,:) = [0 1 1];
        proj_col(5,:) = [1 0 1];
    end

end