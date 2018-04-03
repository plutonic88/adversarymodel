 function [qre_p] = calculate_qre_eqgen(lambda)
 
%  qre_p = lsqnonlin(@belief_error_compute_qre_eqgen_2,[.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;],...
%      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[ ], lambda); 
%  


%  qre_p = lsqnonlin(@oneshot_qre,[.5;.5;.5;.5;],...
%      [0,0,0,0],[1,1,1,1],[ ], lambda); 
%  


lb = [0,0,0,0]; % lower bound constraint
ub = [1,1,1,1];
rng default % reproducible initial point
x0 = [0.5;0.5;0.5;0.5];

Aeq1 = [1,1,0,0];
beq1 = 1;

Aeq2 = [0,0,1,1];
beq2 = 1;

Aeq = [Aeq1; Aeq2];
beq = [beq1;beq2];




opts = optimoptions(@fmincon,'Algorithm','interior-point','Display','off');
x = fmincon(@(x)0,x0,[],[],Aeq,beq,lb,ub, @(x)fminconstr(x, lambda), opts);
qre_p = x;

 
 