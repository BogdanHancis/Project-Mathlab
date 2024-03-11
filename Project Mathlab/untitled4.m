%creates the variable savefile, containing the variables
%in the workspace, in this example vector p and matrix q
savefile = 'pqfile.mat';
% p returns a 10 elements vector(=1-by-10 matrix)
%containing pseudorandom values drawn
%from the standard uniform distribution on the open
%interval(0,1)
p = rand(1, 10);
% q returns a 10-by-10 matrix containing the number 1
q = ones(10);
save(savefile, 'p', 'q');