function [blendA, blendB] = exercicio2(NG)

% NG: numero do grupo

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

NG = 4;

% f = @(x) (10*x(1) + (2*NG)*x(2));
f = [10, 2*NG]';

x0 = [1,1]';

A = [-0.30, -0.20;
     -0.20, -0.25;
     -0.25, -0.30];
b = [-15;
     -10;
     -12];
     
Aeq = [];
beq = [];

ub = [20; 50];     
lb = [0; 0];

x = linprog(f,A,b,Aeq,beq,lb,ub);
x = x';


% mantenha essas duas linhas finais
blendA = x(1);
blendB = x(2);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
