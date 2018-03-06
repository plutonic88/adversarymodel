function [belief_error_vector] = belief_error_2x2_crra(x, lambda, payoffs)

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


response_p1d = p1d;
                                                
                                                
response_p1a = x(2) + x(2) * ( exp(lambda*(( p1d*(p2d2*(x(8)*(payoffs(5,2))+(1-x(8))*(payoffs(6,2)))+...
                                                (1-p2d2)*(x(8)*(payoffs(7,2))+(1-x(8))*(payoffs(8,2))))+...
                                           (1-p1d)*(p2d4*(x(10)*(payoffs(13,2))+(1-x(10))*(payoffs(14,2)))+...
                                                    (1-p2d4)*(x(10)*(payoffs(15,2))+(1-x(10))*(payoffs(16,2))))) -...
                                          (p1d*(p2d1*(x(7)*(payoffs(1,2))+(1-x(7))*(payoffs(2,2)))+...
                                                (1-p2d1)*(x(7)*(payoffs(3,2))+(1-x(7))*(payoffs(4,2))))+...
                                           (1-p1d)*(p2d3*(x(9)*(payoffs(9,2))+(1-x(9))*(payoffs(10,2)))+...
                                                    (1-p2d3)*(x(9)*(payoffs(11,2))+(1-x(9))*(payoffs(12,2))))) )) ) -1; 
                                                
                                                
                                                

response_p2d1 = p2d1;

response_p2d2 = p2d2;

response_p2d3 = p2d3;

response_p2d4 = p2d4;


response_p2a1 = x(7) + x(7) *  exp(lambda*p1d*x(2)*((p2d1*(payoffs(2,2))+(1-p2d1)*(payoffs(4,2)) )...
                                                    -(p2d1*(payoffs(1,2))+(1-p2d1)*(payoffs(3,2))))) -1;

response_p2a2 = x(8) + x(8) *  exp(lambda*p1d*(1-x(2))*((p2d2*(payoffs(6,2))+(1-p2d2)*(payoffs(8,2)) )...
                                                    -(p2d2*(payoffs(5,2))+(1-p2d2)*(payoffs(7,2))))) -1;

response_p2a3 = x(9) + x(9) *  exp(lambda*(1-p1d)*x(2)*((p2d3*(payoffs(10,2))+(1-p2d3)*(payoffs(12,2)) )...
                                                    -(p2d3*(payoffs(9,2))+(1-p2d3)*(payoffs(11,2))))) -1;

response_p2a4 = x(10) + x(10) *  exp(lambda*(1-p1d)*(1-x(2))*((p2d4*(payoffs(14,2))+(1-p2d4)*(payoffs(16,2)) )...
                                                    -(p2d4*(payoffs(13,2))+(1-p2d4)*(payoffs(15,2))))) -1;





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

