classdef secant_method

    methods(Static)
    
        function fx = function_of_x()
           syms x;
           fx = input('Please insert function in terms of x : ');
           disp('Here is the function you input.');
           disp(fx);
        end
        
        function [x0 x1] = get_initial_guess()
           
            x0 = input('Input initial guess x0: ');
            x1 = input('Input initial guess x1: ');
            
        end
        
        function fx_solved = solve_for_equation(x, fx)
            fx_solved = subs(fx, x);      
        end
        
        function x_new = get_new_x(x0, x1, fx0, fx1)
            x_new = x1 - (fx1*(x0 - x1))/(fx0 - fx1);
        end
        
        function relative_error = solve_relative_error(x_old, x_new)
            relative_error = abs(((x_new - x_old)/x_new)*100);
        end
        

        
        function [x_new, relative_error] = solve_for_root(x0, x1, fx, acceptable_error)
           
            relative_error = 100;
            remarks = 'continue';
            table_title = sprintf('%10s\t%10s\t%10s\t%10s\t%10s\t%10s\t%10s\t','x0','x1','f(x0)','f(x1)','x2','Error %','Remark');
            disp(' ')
            disp(table_title);
            
            
            while relative_error > acceptable_error
               
                fx0 = secant_method.solve_for_equation(x0, fx);
                fx1 = secant_method.solve_for_equation(x1, fx);
                x_new = secant_method.get_new_x(x0, x1, fx0, fx1);
                relative_error = secant_method.solve_relative_error(x1, x_new);
                
                if (relative_error <= acceptable_error)
                    remarks = 'acceptable';
 
                end
                
                message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10s\t',x0, x1, fx0, fx1, x_new, relative_error, remarks);
                disp(' ');
                disp(message);
                
                if (relative_error > acceptable_error)
                    x0 = x1;
                    x1 = x_new;
                end
                    
            end
           
        end
        
        
        
    
    end


end