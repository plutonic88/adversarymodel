function [belief_error_vector] = belief_error_compute_qre_eqgen(x, lambda)

d3_p1_2_0 = x(1);
d3_p1_2_1 = x(2);
d3_p1_3_0 = x(3);
d3_p1_3_1 = x(4);
d0_p0_0_1 = x(6);
d0_p0_0_0 = x(5);
d3_p1_0_0 = x(7);
d3_p1_0_1 = x(8);
d3_p1_1_0 = x(9);
d3_p1_1_1 = x(10);
d2_p0_3_0 = x(11);
d2_p0_3_1 = x(12);
d2_p0_2_0 = x(13);
d2_p0_2_1 = x(14);
d2_p0_1_0 = x(15);
d2_p0_1_1 = x(16);
d2_p0_0_0 = x(17);
d2_p0_0_1 = x(18);
d1_p1_0_0 = x(19);
d1_p1_0_1 = x(20);











response_d3_p1_2_0 = x(1)*(1 + exp(lambda*((x(13)*x(19)*x(6)*(8)+x(14)*x(19)*x(6)*(8)) - (x(13)*x(19)*x(6)*(1)+x(14)*x(19)*x(6)*(8))))) - 1;
response_d3_p1_2_1 = x(2)*(exp(lambda*((x(13)*x(19)*x(6)*(1)+x(14)*x(19)*x(6)*(8)) - (x(13)*x(19)*x(6)*(8)+x(14)*x(19)*x(6)*(8)))) + 1) - 1;




response_d3_p1_3_0 = x(3)*(1 + exp(lambda*((x(11)*x(20)*x(6)*(3)+x(12)*x(20)*x(6)*(-2)) - (x(11)*x(20)*x(6)*(-4)+x(12)*x(20)*x(6)*(3))))) - 1;
response_d3_p1_3_1 = x(4)*(exp(lambda*((x(11)*x(20)*x(6)*(-4)+x(12)*x(20)*x(6)*(3)) - (x(11)*x(20)*x(6)*(3)+x(12)*x(20)*x(6)*(-2)))) + 1) - 1;


response_d0_p0_0_1 = x(6)*(exp(lambda*((1*(x(19)*(x(17)*(x(7)*(-6)+x(8)*(1))+x(18)*(x(7)*(1)+x(8)*(-4)))+x(20)*(x(15)*(x(9)*(8)+x(10)*(8))+x(16)*(x(9)*(8)+x(10)*(3))))) - (1*(x(19)*(x(13)*(x(1)*(1)+x(2)*(8))+x(14)*(x(1)*(8)+x(2)*(8)))+x(20)*(x(11)*(x(3)*(-4)+x(4)*(3))+x(12)*(x(3)*(3)+x(4)*(-2))))))) + 1) - 1;
response_d0_p0_0_0 = x(5)*(1 + exp(lambda*((1*(x(19)*(x(13)*(x(1)*(1)+x(2)*(8))+x(14)*(x(1)*(8)+x(2)*(8)))+x(20)*(x(11)*(x(3)*(-4)+x(4)*(3))+x(12)*(x(3)*(3)+x(4)*(-2))))) - (1*(x(19)*(x(17)*(x(7)*(-6)+x(8)*(1))+x(18)*(x(7)*(1)+x(8)*(-4)))+x(20)*(x(15)*(x(9)*(8)+x(10)*(8))+x(16)*(x(9)*(8)+x(10)*(3)))))))) - 1;


response_d3_p1_0_0 = x(7)*(1 + exp(lambda*((x(17)*x(19)*x(5)*(1)+x(18)*x(19)*x(5)*(-4)) - (x(17)*x(19)*x(5)*(-6)+x(18)*x(19)*x(5)*(1))))) - 1;
response_d3_p1_0_1 = x(8)*(exp(lambda*((x(17)*x(19)*x(5)*(-6)+x(18)*x(19)*x(5)*(1)) - (x(17)*x(19)*x(5)*(1)+x(18)*x(19)*x(5)*(-4)))) + 1) - 1;


response_d3_p1_1_0 = x(9)*(1 + exp(lambda*((x(15)*x(20)*x(5)*(8)+x(16)*x(20)*x(5)*(3)) - (x(15)*x(20)*x(5)*(8)+x(16)*x(20)*x(5)*(8))))) - 1;
response_d3_p1_1_1 = x(10)*(exp(lambda*((x(15)*x(20)*x(5)*(8)+x(16)*x(20)*x(5)*(8)) - (x(15)*x(20)*x(5)*(8)+x(16)*x(20)*x(5)*(3)))) + 1) - 1;


response_d2_p0_3_0 = x(11)*(1 + exp(lambda*((x(20)*x(6)*(x(3)*(3)+x(4)*(-2))) - (x(20)*x(6)*(x(3)*(-4)+x(4)*(3)))))) - 1;
response_d2_p0_3_1 = x(12)*(exp(lambda*((x(20)*x(6)*(x(3)*(-4)+x(4)*(3))) - (x(20)*x(6)*(x(3)*(3)+x(4)*(-2))))) + 1) - 1;


response_d2_p0_2_0 = x(13)*(1 + exp(lambda*((x(19)*x(6)*(x(1)*(8)+x(2)*(8))) - (x(19)*x(6)*(x(1)*(1)+x(2)*(8)))))) - 1;
response_d2_p0_2_1 = x(14)*(exp(lambda*((x(19)*x(6)*(x(1)*(1)+x(2)*(8))) - (x(19)*x(6)*(x(1)*(8)+x(2)*(8))))) + 1) - 1;


response_d2_p0_1_0 = x(15)*(1 + exp(lambda*((x(20)*x(5)*(x(9)*(8)+x(10)*(3))) - (x(20)*x(5)*(x(9)*(8)+x(10)*(8)))))) - 1;
response_d2_p0_1_1 = x(16)*(exp(lambda*((x(20)*x(5)*(x(9)*(8)+x(10)*(8))) - (x(20)*x(5)*(x(9)*(8)+x(10)*(3))))) + 1) - 1;


response_d2_p0_0_0 = x(17)*(1 + exp(lambda*((x(19)*x(5)*(x(7)*(1)+x(8)*(-4))) - (x(19)*x(5)*(x(7)*(-6)+x(8)*(1)))))) - 1;
response_d2_p0_0_1 = x(18)*(exp(lambda*((x(19)*x(5)*(x(7)*(-6)+x(8)*(1))) - (x(19)*x(5)*(x(7)*(1)+x(8)*(-4))))) + 1) - 1;


response_d1_p1_0_0 = x(19)*(1 + exp(lambda*((x(5)*(x(15)*(x(9)*(8)+x(10)*(8))+x(16)*(x(9)*(8)+x(10)*(3)))+x(6)*(x(11)*(x(3)*(-4)+x(4)*(3))+x(12)*(x(3)*(3)+x(4)*(-2)))) - (x(5)*(x(17)*(x(7)*(-6)+x(8)*(1))+x(18)*(x(7)*(1)+x(8)*(-4)))+x(6)*(x(13)*(x(1)*(1)+x(2)*(8))+x(14)*(x(1)*(8)+x(2)*(8))))))) - 1;
response_d1_p1_0_1 = x(20)*(exp(lambda*((x(5)*(x(17)*(x(7)*(-6)+x(8)*(1))+x(18)*(x(7)*(1)+x(8)*(-4)))+x(6)*(x(13)*(x(1)*(1)+x(2)*(8))+x(14)*(x(1)*(8)+x(2)*(8)))) - (x(5)*(x(15)*(x(9)*(8)+x(10)*(8))+x(16)*(x(9)*(8)+x(10)*(3)))+x(6)*(x(11)*(x(3)*(-4)+x(4)*(3))+x(12)*(x(3)*(3)+x(4)*(-2)))))) + 1) - 1;


belie_error_d3_p1_2_0 = d3_p1_2_0 - response_d3_p1_2_0;
belie_error_d3_p1_2_1 = d3_p1_2_1 - response_d3_p1_2_1;
belie_error_d3_p1_3_0 = d3_p1_3_0 - response_d3_p1_3_0;
belie_error_d3_p1_3_1 = d3_p1_3_1 - response_d3_p1_3_1;
belie_error_d0_p0_0_1 = d0_p0_0_1 - response_d0_p0_0_1;
belie_error_d0_p0_0_0 = d0_p0_0_0 - response_d0_p0_0_0;
belie_error_d3_p1_0_0 = d3_p1_0_0 - response_d3_p1_0_0;
belie_error_d3_p1_0_1 = d3_p1_0_1 - response_d3_p1_0_1;
belie_error_d3_p1_1_0 = d3_p1_1_0 - response_d3_p1_1_0;
belie_error_d3_p1_1_1 = d3_p1_1_1 - response_d3_p1_1_1;
belie_error_d2_p0_3_0 = d2_p0_3_0 - response_d2_p0_3_0;
belie_error_d2_p0_3_1 = d2_p0_3_1 - response_d2_p0_3_1;
belie_error_d2_p0_2_0 = d2_p0_2_0 - response_d2_p0_2_0;
belie_error_d2_p0_2_1 = d2_p0_2_1 - response_d2_p0_2_1;
belie_error_d2_p0_1_0 = d2_p0_1_0 - response_d2_p0_1_0;
belie_error_d2_p0_1_1 = d2_p0_1_1 - response_d2_p0_1_1;
belie_error_d2_p0_0_0 = d2_p0_0_0 - response_d2_p0_0_0;
belie_error_d2_p0_0_1 = d2_p0_0_1 - response_d2_p0_0_1;
belie_error_d1_p1_0_0 = d1_p1_0_0 - response_d1_p1_0_0;
belie_error_d1_p1_0_1 = d1_p1_0_1 - response_d1_p1_0_1;

belief_error_vector = [belie_error_d3_p1_2_0; belie_error_d3_p1_2_1; belie_error_d3_p1_3_0; belie_error_d3_p1_3_1; belie_error_d0_p0_0_1; belie_error_d0_p0_0_0; belie_error_d3_p1_0_0; belie_error_d3_p1_0_1; belie_error_d3_p1_1_0; belie_error_d3_p1_1_1; belie_error_d2_p0_3_0; belie_error_d2_p0_3_1; belie_error_d2_p0_2_0; belie_error_d2_p0_2_1; belie_error_d2_p0_1_0; belie_error_d2_p0_1_1; belie_error_d2_p0_0_0; belie_error_d2_p0_0_1; belie_error_d1_p1_0_0; belie_error_d1_p1_0_1 ]; 


%belief_error_vector = [belie_error_d3_p1_2_0; belie_error_d3_p1_3_0; belie_error_d0_p0_0_0; belie_error_d3_p1_0_0; belie_error_d3_p1_1_0; belie_error_d2_p0_3_0; belie_error_d2_p0_2_0; belie_error_d2_p0_1_0; belie_error_d2_p0_0_0; belie_error_d1_p1_0_0 ]; 

end

