function [belief_error_vector] = oneshot_qre(x, lambda)

d0_p0_0_0 = x(1);
d0_p0_0_1 = x(2);
d1_p1_0_0 = x(3);
d1_p1_0_1 = x(4);



response_d0_p0_0_0 = x(1)*(1 + exp(lambda*( 2*x(3) + 2*x(4)) ) ) - 1;
response_d0_p0_0_1 = x(2)*(exp(lambda*( -2*x(3) -2*x(4) )) + 1) - 1;





response_d1_p1_0_0 = x(3)*(1 + exp(lambda*( 7*x(1) - 5*x(2) ))) - 1;
response_d1_p1_0_1 = x(4)*(exp(lambda*( -7*x(1) + 5*x(2))) + 1) - 1;




belie_error_d0_p0_0_0 = d0_p0_0_0 - response_d0_p0_0_0;
belie_error_d0_p0_0_1 = d0_p0_0_1 - response_d0_p0_0_1;
belie_error_d1_p1_0_0 = d1_p1_0_0 - response_d1_p1_0_0;
belie_error_d1_p1_0_1 = d1_p1_0_1 - response_d1_p1_0_1;

belief_error_vector = [belie_error_d0_p0_0_0; belie_error_d0_p0_0_1; belie_error_d1_p1_0_0; belie_error_d1_p1_0_1 ]; 


