function colorMap = blueyellow()
% 256 element colorMap for blue to black to yellow
% MGC 6/2/2022

colorMap = [[zeros(128,1); linspace(0,1,128)'], [linspace(0.5,0,128)'; linspace(0, 1, 128)'], [linspace(1,0,128)'; zeros(128,1)]];

end