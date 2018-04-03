function [c,ceq] = fminconstr(x, lambda)


c = oneshot_qre_v2(x, lambda); % no nonlinear inequality
ceq = []; % the fsolve objective is fmincon constraints

