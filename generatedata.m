
lambda = [2];
la_est = zeros(1,6);
qre_p = zeros(1,6);
qre_q = zeros(1,6);

N_EXAMPLES = 500;




 d = [-6, -6, -4, -4, -6, -6, -4, -4, -4, -4, -2, -2, -4, -4, -2, -2];
 a = [-6, 1, 1, -4, 8, 8, 8, 3, 1, 8, 8, 8, -4, 3, 3, -2];

 %d = [4, 4, 2, 5, 4, 4, 2, 5, 2, 2, 0, 3, 5, 5, 3, 6];
 %a = [4, 4, 2, 2, 4, 4, 2, 2, 2, 2, 0, 1, 3, 3, 1, 2];
 
 
 %  d = [10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0];
 %  a = [10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0];

 %  d = [-6, -6, -4, -4, -6, -6, -4, -4, -4, -4, -2, -2, -4, -4, -2, -2];
 %  a = [-6, 3, 4, -4, 10, 12, 13, 12, 14, 13, 14, 16, -4, 5, 6, -2];

  % d = [0, 10, 10, 0, 10, 10, 10, 10, 0, 0, 10, 0, 10, 0, 0, 10];
  % a = [10, 10, 0, 10, 0, 10, 10, 10, 0, 10, 0, 10, 0, 10, 0, 10];
 
 
 %d = randi([3 6],1,16);
 %a = randi([3 6],1,16);

payoffs = zeros(16,2);

for i=1:16
    payoffs(i,1) = d(i);
    payoffs(i,2) = a(i);
end



lambda_index = 1;


lamd= linspace(0,5,40)

s = size(lamd)

qr_data = zeros(40,10)

% index=1;
% for l=lamd
%     q= calculate_qre(l, payoffs);
%     qr_data(index,:) = q;
%     index = index+1;
% end


% %for i=1:10
%     figure
%     plot(lamd,qr_data(:,7:10))
%     %legend(i+'')
%     xlabel('lambda'), ylabel('P')
%     title('probability for lambda')
% %end


for la =lambda
    
    la
    qre1 = calculate_qre_eqgen(la); % prob from root
   % qre2 = calculate_qre(la, payoffs); % prob from immediate Q(v)
    
    qre = round(qre1,2)
   % 1-qre(1)
    
    p_d_a_ = qre(1);
    p_a_a_ = qre(2);
    
    p_d_a_aa = qre(3);
    p_d_a_ab = qre(4);
    p_d_a_ba = qre(5);
    p_d_a_bb = qre(6);
    
    p_a_a_aa = qre(7);
    p_a_a_ab = qre(8);
    p_a_a_ba = qre(9);
    p_a_a_bb = qre(10);
    
    
    
    data = zeros(N_EXAMPLES,4);
    
    
    for i=1:N_EXAMPLES
        
        x = round(rand,2);
        if(x<=p_d_a_)
            data(i,1) = 1;
            
        else
            data(i,1) = 2;
        end
        
        y = round(rand,2);
        if(y<=p_a_a_)
            data(i,2) = 1;
        else
            data(i,2) = 2;
        end
        
        q_d=0;
        q_a=0;
        
        if(data(i,1)==1 && data(i,2)==1)
            q_d = qre(3);
            q_a = qre(7);
        elseif(data(i,1)==1 && data(i,2)==2)
            q_d = qre(4);
            q_a = qre(8);
        elseif(data(i,1)==2 && data(i,2)==1)
            q_d = qre(5);
            q_a = qre(9);
        elseif(data(i,1)==2 && data(i,2)==2)
            q_d = qre(6);
            q_a = qre(10);
        end
        
        x = round(rand,2);
        if(x<=q_d)
            data(i,3) = 1;
            
        else
            data(i,3) = 2;
        end
        
        y = round(rand,2);
        if(y<=q_a)
            data(i,4) = 1;
        else
            data(i,4) = 2;
        end
    end
    
    
    lam = [1;]
    A = []
    b =[]
    Aeq= []
    beq =[]
    lb = (0)
    ub = (Inf)
    nonlcoln =[]
    p1 = [qre(1); 0.5; qre(3); qre(4); qre(5); qre(6); 0.5; 0.5; 0.5; 0.5]
   % p1 = [ 0.5; 0.5; 0.5; 0.5; 0.5; 0.5; 0.5; 0.5;0.5; 0.5;]
   options = optimoptions('fmincon','MaxFunEvals',3000);
    [beta,fval,flags,output,gradient,hessian]=fmincon(@(beta)-likelihood_2x2_crra(beta,data,p1,payoffs),...
        lam,A,b,Aeq,beq,lb,ub,nonlcoln,options)
    
    la_est(lambda_index) = beta
    
    lambda_index = lambda_index+1;
    
    
end

