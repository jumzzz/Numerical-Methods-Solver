classdef optimization_newton
   
    methods(Static)
       
        function fx = function_of_x()
           syms x;
           fx = input('Please insert function in terms of x : ');
           disp('Here is the function you input.');
           disp(fx);
        end
        
        function dfx = get_first_derivative(fx)
            dfx = diff(fx);        
        end
        
        function ddfx = get_second_derivative(fx)
        
            ddfx = diff(diff(fx));
            
        end
        
        function fx_solved = solve_for_equation(x, fx)
            fx_solved = subs(fx, x);      
        end
        
        function x_new = get_new_x(x_old, dfx_solved, ddfx_solved)
            x_new = x_old - (dfx_solved)/(ddfx_solved);
        end
        
        function percent_error = solve_relative_error(x_old, x_new)
            percent_error = 100*abs((x_old - x_new)/x_new);
        end
        
        function table_title = table_title()
            table_title = '          xold      dfx      ddfx      xnew      err    limit';
        end
       
        function [x_new, relative_error] = find_optimum_point(x_old, fx, acceptable_error)
            
            relative_error = 100;
            remarks = 'continue';
            dfx = optimization_newton.get_first_derivative(fx);
            ddfx = optimization_newton.get_second_derivative(fx);
            
            table_title = sprintf('%10s\t%10s\t%10s\t%10s\t%10s\t%10s','xi','df(xi)','ddfxi','xi+1','Error %', 'Remark');
            disp(table_title);
            
            while relative_error > acceptable_error
               
                
                dfx_solved = optimization_newton.solve_for_equation(x_old, dfx);
                ddfx_solved = optimization_newton.solve_for_equation(x_old, ddfx);

                x_new = x_old - (dfx_solved)/(ddfx_solved);
                relative_error = ((abs(x_new - x_old))/(abs(x_new)))*100;
                
                if relative_error <= acceptable_error
                    remarks = 'acceptable';
                else
                    x_old = x_new;
                end
                
                message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10s',x_old, dfx_solved, ddfx_solved, x_new, relative_error, remarks);
                disp(message);
                
            end
        end
        
    end
    
end