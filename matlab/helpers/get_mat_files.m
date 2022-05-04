function mat_files = get_mat_files(folder)

    mat_files = dir(fullfile(folder,'*.mat'));
    mat_files = {mat_files.name}';
    for i = 1:numel(mat_files)
        mat_files{i} = mat_files{i}(1:end-4);
    end

end