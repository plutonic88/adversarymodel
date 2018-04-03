 function [qre_p] = calculate_qre_eqgen(lambda)
 
%  qre_p = lsqnonlin(@belief_error_compute_qre_eqgen_2,[.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;],...
%      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[ ], lambda); 
%  


 qre_p = lsqnonlin(@oneshot_qre,[.5;.5;.5;.5;],...
     [0,0,0,0],[1,1,1,1],[ ], lambda); 
 

 
 