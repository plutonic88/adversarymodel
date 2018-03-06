function [belief_error_vector] = belief_error_compute_qre(x, lambda, payoffs)
p1d = x(1);
p1a = x(2);
p2d1 = x(3);
p2d2 = x(4);
p2d3 = x(5);
p2d4 = x(6);
p2a1 = x(7);
p2a2 = x(8);
p2a3 = x(9);
p2a4 = x(10);


response_p1d = x(1) + x(1) * ( exp(lambda*(( x(2)*(x(5)*(x(9)*(payoffs(9,1))+(1-x(9))*(payoffs(10,1)))+...
                                                (1-x(5))*(x(9)*(payoffs(11,1))+(1-x(9))*(payoffs(12,1))))+...
                                           (1-x(2))*(x(6)*(x(10)*(payoffs(13,1))+(1-x(10))*(payoffs(14,1)))+...
                                                    (1-x(6))*(x(10)*(payoffs(15,1))+(1-x(10))*(payoffs(16,1))))) -...
                                          (x(2)*(x(3)*(x(7)*(payoffs(1,1))+(1-x(7))*(payoffs(2,1)))+...
                                                (1-x(3))*(x(7)*(payoffs(3,1))+(1-x(7))*(payoffs(4,1))))+...
                                           (1-x(2))*(x(4)*(x(8)*(payoffs(5,1))+(1-x(8))*(payoffs(6,1)))+...
                                                    (1-x(4))*(x(8)*(payoffs(7,1))+(1-x(8))*(payoffs(8,1))))) )) )-1;
                                                
                                                
response_p1a = x(2) + x(2) * ( exp(lambda*(( x(1)*(x(4)*(x(8)*(payoffs(5,2))+(1-x(8))*(payoffs(6,2)))+...
                                                (1-x(4))*(x(8)*(payoffs(7,2))+(1-x(8))*(payoffs(8,2))))+...
                                           (1-x(1))*(x(6)*(x(10)*(payoffs(13,2))+(1-x(10))*(payoffs(14,2)))+...
                                                    (1-x(6))*(x(10)*(payoffs(15,2))+(1-x(10))*(payoffs(16,2))))) -...
                                          (x(1)*(x(3)*(x(7)*(payoffs(1,2))+(1-x(7))*(payoffs(2,2)))+...
                                                (1-x(3))*(x(7)*(payoffs(3,2))+(1-x(7))*(payoffs(4,2))))+...
                                           (1-x(1))*(x(5)*(x(9)*(payoffs(9,2))+(1-x(9))*(payoffs(10,2)))+...
                                                    (1-x(5))*(x(9)*(payoffs(11,2))+(1-x(9))*(payoffs(12,2))))) )) )-1; 
                                                
                                                
                                                

response_p2d1 = x(3) + x(3) *  exp(lambda*x(1)*x(2)*((x(7)*(payoffs(3,1))+(1-x(7))*(payoffs(4,1)))...
                                                    -(x(7)*(payoffs(1,1))+(1-x(7))*(payoffs(2,1)))))-1;

response_p2d2 = x(4) + x(4) *  exp(lambda*x(1)*(1-x(2))*((x(8)*(payoffs(7,1))+(1-x(8))*(payoffs(8,1)))...
                                                        -(x(8)*(payoffs(5,1))+(1-x(8))*(payoffs(6,1)))))-1;

response_p2d3 = x(5) + x(5) *  exp(lambda*(1-x(1))*x(2)*((x(9)*(payoffs(11,1))+(1-x(9))*(payoffs(12,1)))...
                                                        -(x(9)*(payoffs(9,1))+(1-x(9))*(payoffs(10,1)))))-1;

response_p2d4 = x(6) + x(6) *  exp(lambda*(1-x(1))*(1-x(2))*((x(10)*(payoffs(15,1))+(1-x(10))*(payoffs(16,1)))...
                                                        -(x(10)*(payoffs(13,1))+(1-x(10))*(payoffs(14,1)))))-1;


response_p2a1 = x(7) + x(7) *  exp(lambda*x(1)*x(2)*((x(3)*(payoffs(2,2))+(1-x(3))*(payoffs(4,2)) )...
                                                    -(x(3)*(payoffs(1,2))+(1-x(3))*(payoffs(3,2)))))-1;

response_p2a2 = x(8) + x(8) *  exp(lambda*x(1)*(1-x(2))*((x(4)*(payoffs(6,2))+(1-x(4))*(payoffs(8,2)) )...
                                                    -(x(4)*(payoffs(5,2))+(1-x(4))*(payoffs(7,2)))))-1;

response_p2a3 = x(9) + x(9) *  exp(lambda*(1-x(1))*x(2)*((x(5)*(payoffs(10,2))+(1-x(5))*(payoffs(12,2)) )...
                                                    -(x(5)*(payoffs(9,2))+(1-x(5))*(payoffs(11,2)))))-1;

response_p2a4 = x(10) + x(10) *  exp(lambda*(1-x(1))*(1-x(2))*((x(6)*(payoffs(14,2))+(1-x(6))*(payoffs(16,2)) )...
                                                    -(x(6)*(payoffs(13,2))+(1-x(6))*(payoffs(15,2)))))-1;





belief_error_p1d = p1d - response_p1d;
belief_error_p1a = p1a - response_p1a;

belief_error_p2d1 = p2d1 - response_p2d1;
belief_error_p2d2 = p2d2 - response_p2d2;
belief_error_p2d3 = p2d3 - response_p2d3;
belief_error_p2d4 = p2d4 - response_p2d4;

belief_error_p2a1 = p2a1 - response_p2a1;
belief_error_p2a2 = p2a2 - response_p2a2;
belief_error_p2a3 = p2a3 - response_p2a3;
belief_error_p2a4 = p2a4 - response_p2a4;



belief_error_vector = [belief_error_p1d;belief_error_p1a;belief_error_p2d1;belief_error_p2d2;...
    belief_error_p2d3;belief_error_p2d4;belief_error_p2a1;belief_error_p2a2;belief_error_p2a3;belief_error_p2a4];
end

