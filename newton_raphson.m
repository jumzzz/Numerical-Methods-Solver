classdef newton_raphson

    methods(Static)
        
        function fx = function_of_x()
           syms x;
           fx = input('Please insert function in terms of x : ');
           disp('Here is the function you input.');
           disp(fx);
        end
        
        function dfx = get_derivative(fx)
            dfx = diff(fx);        
        end
        
        function fx_solved = solve_for_equation(x, fx)
            fx_solved = subs(fx, x);      
        end
        
        function x_new = get_new_x(x_old, fx_solved, dfx_solved)
            x_new = x_old - (fx_solved)/(dfx_solved);
        end
        
        function relative_error = solve_relative_error(x_old, x_new)
            relative_error = 100*abs((x_old - x_new)/x_new);
        end
        
        function [x_new, relative_error] = solve_for_root(x_old, fx, acceptable_error)
           
            relative_error = 100;
            remark = 'continue';
            
            dfx = newton_raphson.get_derivative(fx);
            table_title = sprintf('%10s\t%10s\t%10s\t%10s\t%10s\t%10s','xi','f(xi)','dfxi/dx','xi+1','Error %', 'Remark');
            disp(table_title);
            disp(' ')
            
            while relative_error > acceptable_error
            
                  fx_solved = newton_raphson.solve_for_equation(x_old, fx);
                  dfx_solved = newton_raphson.solve_for_equation(x_old, dfx);
            
                  x_new = newton_raphson.get_new_x(x_old, fx_solved, dfx_solved);
            
                  relative_error = newton_raphson.solve_relative_error(x_old, x_new);
                  
                  if (relative_error <= acceptable_error)
                       remark = 'acceptable';
                  end
                  
                  message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10s', x_old, fx_solved, dfx_solved, x_new, relative_error, remark);
                  disp(message);
                  
                  if (relative_error > acceptable_error)
                     x_old = x_new; 
                     
                  end
            

            end
           
           
        end
        
        

        

          
    end
    
end

