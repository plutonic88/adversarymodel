 function [qre_p] = calculate_qre(lambda, payoffs)
 
 qre_p = lsqnonlin(@belief_error_compute_qre,[.5;.5;.5;.5;.5;.5;.5;.5;.5;.5;],...
     [0,0,0,0,0,0,0,0,0,0],[1,1,1,1,1,1,1,1,1,1],[ ], lambda, payoffs); 
 
 
 