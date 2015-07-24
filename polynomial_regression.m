classdef polynomial_regression
    
    methods(Static)
        
        function ind_var = ind_var_input()
           
            disp('Please enter the independent variable in an enclosed 1-D matrix [x1 x2 .. xn]');
            ind_var = input('Example:  [1 2 3 4 ]');
            
        end
        
        function dep_var = dep_var_input(ind_var)
            
                disp('Please enter the dependent variable in an enclosed 1-D matrix [y(x1) y(x2) .. y(xn)]');
                dep_var = input('Example: [2 3 4 5 ] ');
            
                if ( length(dep_var) == length(ind_var) )
                    disp('Acceptable inputs with same size. ');
                else
                    disp('The size of your independent variable doesnt match the size of your dependent variable. \n');
                    disp('Please enter again your values in an enclose matrix [y(x1) y(x2) ... y(x3)]');
                end
                
            
        end
        
        function table = display_table(ind_var, dep_var)
           
            table = [transpose(ind_var) transpose(dep_var)];
            disp(table);
            
        end
        
        function poly_mat = poly_func(ind_var, dep_var, n_order)
           
            poly_mat = fliplr(polyfit(ind_var, dep_var, n_order));         % Polyfit generates an x^n + x^n-1 + ...  sequence it will 
                                                                           % much easier to deal with it if it was fliped from left to right
                                                                     
        end
        
        
    end
    
    
end