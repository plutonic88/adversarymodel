function [belief_error_vector] = oneshot_qre_v2(x, lambda)

d0_p0_0_0 = x(1);
d0_p0_0_1 = x(2);
d1_p1_0_0 = x(3);
d1_p1_0_1 = x(4);



response_d0_p0_0_0 = x(1)*(1 + exp(lambda*((1*(x(3)*(-1)+x(4)*(-1))) - (1*(x(3)*(-3)+x(4)*(-3)))))) - 1;
response_d0_p0_0_1 = x(2)*(exp(lambda*((1*(x(3)*(-3)+x(4)*(-3))) - (1*(x(3)*(-1)+x(4)*(-1))))) + 1) - 1;

err = x(1) + x(2) -1;

response_d1_p1_0_0 = x(3)*(1 + exp(lambda*((x(1)*(4)+x(2)*(-1)) - (x(1)*(-3)+x(2)*(4))))) - 1;
response_d1_p1_0_1 = x(4)*(exp(lambda*((x(1)*(-3)+x(2)*(4)) - (x(1)*(4)+x(2)*(-1)))) + 1) - 1;

err2 = x(3) + x(4) -1;

belie_error_d0_p0_0_0 = d0_p0_0_0 - response_d0_p0_0_0;
belie_error_d0_p0_0_1 = d0_p0_0_1 - response_d0_p0_0_1;
belie_error_d1_p1_0_0 = d1_p1_0_0 - response_d1_p1_0_0;
belie_error_d1_p1_0_1 = d1_p1_0_1 - response_d1_p1_0_1;

belief_error_vector = [ err; err2; belie_error_d0_p0_0_0; belie_error_d0_p0_0_1; belie_error_d1_p1_0_0; belie_error_d1_p1_0_1 ]; 
end

