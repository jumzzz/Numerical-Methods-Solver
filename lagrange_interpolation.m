classdef lagrange_interpolation
    
   methods(Static)
      
       function ind_var = ind_var_input()
           
            disp('Please enter the independent variable in an enclosed 1-D matrix [x1 x2 .. xn]');
            disp('If you want to interpolate using 1st order Langrage please enter a 2 element 1-D Matrix');
            disp('If you want to interpolate using 2nd order Langrage please enter a 3 element 1-D Matrix');
            disp('The value of independent variable must be in between the initial and final bounds of the independent variable ');
            disp('The value x must satisfy the following range a < x < b where a = initial and b = final bounds ');
            disp(' ');
            disp(' ');
            
            disp('Please the number choose which order you will use..');
            disp('1. 1st Order Lagrange');
            disp('2, 2nd Order Lagrange');
            
            disp(' ');
            
            option = input('Please enter the number: ');
            disp(' ');

                if(option == 1);

                       ind_var = input('Please enter a 2 element 1-D matrix example [1 10]: ');

                       if (length(ind_var) ~= 2)
                           disp('Invalid 1-D Matrix size. Please input a 2 element 1-D matrix');
                       end


                elseif(option == 2);

                       ind_var = input('Please enter a 3 element 1-D matrix example [1 10 20]: ');

                       if (length(ind_var) ~= 3)
                           disp('Invalid 1-D Matrix size. Please input a 3 element 1-D matrix');
                       end

                   

                else
                   disp('Invalid input. Please choose from the designated option'); 
                end
                
            end
            
       
        
        
        function dep_var = dep_var_input(ind_var)
            
                
                if (length(ind_var) == 2)
                
                    
                    dep_var = input('Please enter a 2 element 1-D matrix for dependent variable: ');
                    
                    if(length(dep_var) ~= 2)
                       disp('Invalid input please enter a 2 element 1-D matrix for dependent variable: '); 
 
                    end
                    
                elseif(length(ind_var) == 3)
                    
                    dep_var = input('Please enter a 3 element 1-D matrix for dependent variable: ');
                    
                    if(length(dep_var) ~= 3)
                       disp('Invalid input please enter a 3 element 1-D matrix for dependent variable: ');
                   
                    end
                end
                
            end
            
        
        
        function table = display_table(ind_var, dep_var)
           
            table = [transpose(ind_var) transpose(dep_var)];
            disp(table);
            
        end
        
        function fx_solved = interpolate(ind_var, dep_var, point)
            
            if( length(ind_var) == length(dep_var))
                
                if( length(ind_var) == 2)
                   
                    x0 = ind_var(1);
                    x1 = ind_var(2);
                    
                    fx0 = dep_var(1);
                    fx1 = dep_var(2);
                    
                    x = point;
                    
                    fx_solved = ((x - x1)/(x0 - x1))*(fx0) + ((x- x0)/(x1 - x0))*(fx1);
                    
                elseif( length(ind_var) ==3)
                    
                    x0 = ind_var(1);
                    x1 = ind_var(2);
                    x2 = ind_var(3);
                    
                    fx0 = dep_var(1);
                    fx1 = dep_var(2);
                    fx2 = dep_var(3);
                    
                    x = point;
                    
                    fx_solved = (((x - x1)*(x - x2))/((x0 - x1)*(x0 - x2)))*fx0 + (((x - x0)*(x - x2))/((x1 - x0)*(x1 - x2)))*fx1 + ...
                            (((x - x0)*(x - x1))/((x2 - x0)*(x2 - x1)))*fx2;
                
                end
            
            else
                disp('Invalid arguments for function interpolate');
                fx_solved = 0;
            end
            
        end
        
        
       
   end
    
end