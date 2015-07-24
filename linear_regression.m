classdef linear_regression
   
    methods(Static)
       
        function ind_var = ind_var_input()
           
            disp('Please enter the independent variable in an enclosed 1-D matrix [x1 x2 .. xn]');
            ind_var = input('Example:  [1 2 3 4 ]');
            
        end
        
        function dep_var = dep_var_input(ind_var)
            
            
                disp('Please enter the dependent variable in an enclosed 1-D matrix [y(x1) y(x2) .. y(xn)]');
                dep_var = input('Example: [2 3 4 5 ] ');
            
                if ( length(dep_var) == length(ind_var) )
                    disp('Acceptable input. Both independent and dependent variable has same size. ');
                else
                    disp('The size of your independent variable doesnt match the size of your dependent variable. \n');
                    disp('Please enter again your values in an enclose matrix [y(x1) y(x2) ... y(x3)]');
                end
                
        end
            
        
        
        function table = display_table(ind_var, dep_var)
           
            table = [transpose(ind_var) transpose(dep_var)];
            disp(table);
            
        end
        
        function a1 = solve_a1(ind_var, dep_var)
           
            n = length(ind_var);
            z = ind_var.*dep_var;
            ind_var_sq = ind_var.^2;
            numerator = n*sum(z) - sum(ind_var)*sum(dep_var);
            denominator = n*sum(ind_var_sq) - (sum(ind_var))^2;
            a1 = numerator/denominator;
            
        end
        
        function a0 = solve_a0(ind_var, dep_var, a1)
           
            a0 = mean(dep_var) - a1*mean(ind_var);
   
        end
        
        
        function fx = show_linear_func(a0, a1)
           syms x; 
           fx =  a0 + a1*x; 
           disp(fx);
        end
            
        
    end
    
end