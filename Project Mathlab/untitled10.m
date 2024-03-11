clear;
close all;
VDC = 5;
R = 3e3;
C = 2e-6;
% period =amount of time for one cycle
T = 6e-3;
% duty cycle, 0.5 for rectangular wave
D = 0.5;
N = 7;
% call of the function
RC_circuit(VDC,R,C,T,D,N);