function logL = likelihood_2x2_crra(beta, data, p1, payoffs)

N_EXAMPLES = size(data);

lambda = beta(1);
logL=0;
for i=1:N_EXAMPLES(1)
    
    hist_p= zeros(1,10);
    for j=1:2
        
        options = optimoptions('lsqnonlin','MaxFunEvals',3000);
        
        if(j==1)
            p = p1;
            qre = lsqnonlin(@belief_error_2x2_crra,p,[0,0,0,0,0,0,0,0,0,0],[1,1,1,1,1,1,1,1,1,1],[],lambda,payoffs);
        elseif(j==2)
            p = p1;
            p(1) = hist_p(1);
            p(2) = hist_p(2);
            qre = lsqnonlin(@belief_error_2x2_crra,p,[0,0,0,0,0,0,0,0,0,0],[1,1,1,1,1,1,1,1,1,1],[],lambda,payoffs);
        end
        
       % qre = lsqnonlin(@belief_error_2x2_crra,p,[0,0,0,0,0,0,0,0,0,0],[1,1,1,1,1,1,1,1,1,1],[],lambda,payoffs);
       
       % qre = lsqnonlin(@belief_error_compute_qre2,p,[0,0,0,0,0,0,0,0,0,0],[1,1,1,1,1,1,1,1,1,1],[],lambda,payoffs);
        
        if(j==1)
            hist_p = qre;
            if(data(i,2)==1)
                logL = logL + log(qre(2));
            else
                logL = logL + log(1-qre(2));
            end
        elseif(j==2)
            if(data(i,1)==1 && data(i,2)==1  && data(i,4)==1)
                logL = logL + log(qre(7));
            elseif(data(i,1)==1 && data(i,2)==1 && data(i,4)==2)
                logL = logL + log(1-qre(7));
                
                
            elseif(data(i,1)==1 && data(i,2)==2 && data(i,4)==1)
                logL = logL + log(qre(8));
            elseif(data(i,1)==1 && data(i,2)==2 && data(i,4)==2)
                logL = logL + log(1-qre(8));
                
            elseif(data(i,1)==2 && data(i,2)==1 && data(i,4)==1)
                logL = logL + log(qre(9));
            elseif(data(i,1)==2 && data(i,2)==1 && data(i,4)==2)
                logL = logL + log(1-qre(9));
                
            elseif(data(i,1)==2 && data(i,2)==2 && data(i,4)==1)
                logL = logL + log(qre(10));
            elseif(data(i,1)==2 && data(i,2)==2 && data(i,4)==2)
                logL = logL + log(1-qre(10));
                
            end
        end
        
        
    end
end

% logL = -logL

end