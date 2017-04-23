function [ ] = gen_graph( matrix , thres, matrix_name)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
matrix = matrix';

cor_mat = corr(matrix);

% disp (cor_mat);
adj_mat = threshold(cor_mat, thres);

% XData: [219, 346, 118, 202, 283, 364, 446, 138, 234, 329, 425, 78, 177, 283, 384, 486, 44, 138, 234, 330, 426, 519, 117, 199, 283, 364, 448, 135, 218, 283, 345, 428];
% YData: [120, 120, 193, 208, 211, 207, 191, 254, 261, 261, 254, 312, 312, 312, 312, 312, 392, 367, 361, 362, 369, 392, 431. 415, 411, 413, 430, 513, 501, 512, 501, 514];
% ZData: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0 ,0, 0, 0, 0, 0, 0, 0]
%  
G = graph(adj_mat, 'lower');

% figure;

colormap([0 1 0
    0 0 1
    1 0 0
    0 0 0]);

p = plot(G, 'EdgeCData', G.Edges.Weight, 'LineWidth', G.Edges.Weight*2)
p.XData = [219, 346, 118, 202, 283, 364, 446, 138, 234, 329, 425, 78, 177, 283, 384, 486, 44, 138, 234, 330, 426, 519, 117, 199, 283, 364, 448, 135, 218, 283, 345, 428];
p.YData = [120, 120, 193, 208, 211, 207, 191, 254, 261, 261, 254, 312, 312, 312, 312, 312, 392, 367, 361, 362, 369, 392, 431. 415, 411, 413, 430, 513, 501, 512, 501, 514];

title(matrix_name);

colorbar;

end

