classdef trapezoidal_rule
    
    methods(Static)
        
        function fx = function_of_x()
           syms x;
           fx = input('Please insert function in terms of x : ');
           disp('Here is the function you input.');
           disp(fx);
        end
        
        function integral = single_application_functional(first, last, fx)
           
            func_first = subs(fx, first);
            func_last = subs(fx, last);
            
            integral = (last - first)*(func_first + func_last)/2;
        end
        
        function integral = multiple_application_functional(first, last, fx, num_segments)
            
            
            h = (last - first)/num_segments;
            func_first = subs(fx, first);
            func_last = subs(fx, last);
            
            step = first + h;
            
            func_step = zeros(num_segments-1,1);
            
            for index = 1:(num_segments-1)
                func_step(index,1) = subs(fx, step);
                step = step + h;
            end    
            
            integral = (last - first)*(func_first + 2*sum(func_step) + func_last)/(2*num_segments);
            
        end
        
    end
    
end