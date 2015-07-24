classdef simpson_rule
   
    methods(Static)
   
        function fx = function_of_x()
           syms x;
           fx = input('Please insert function in terms of x : ');
           disp('Here is the function you input.');
           disp(fx);
        end
        
        function integral = single_application_functional(first, last, fx)
            
            h = (last - first)/2;
            mid = (first + last)/2;
            func_first = subs(fx, first);
            func_last = subs(fx, last);
            func_mid = subs(fx, mid);
            
            integral = (h/3)*(func_first + 4*func_mid + func_last);
        end
        
        function integral = multiple_application_functional(first, last, fx, num_segments)
            
             h = (last - first)/num_segments;
             func_first = subs(fx, first);
             func_last = subs(fx, last);
             
             step = first + h;
             func_step = zeros(num_segments-1,1);
             
             for index = 1:num_segments-1
                 func_step(index,1) = subs(fx, step);
                 step = step + h;
             end
             
             index_odd = 1;
             index_even = 2;
             func_odd = zeros(num_segments,1);
             func_even = zeros(num_segments,1);
             i = 1;
             j = 1;
             
             while (index_odd < num_segments) && (i < num_segments-1)
                 
                 func_odd(i,1) = func_step(index_odd,1);
                 i = i + 1;
                 index_odd = index_odd + 2;
                 
             end
             
             while (index_even < num_segments) && (j < num_segments-1)
                 
                 func_even(j,1) = func_step(index_even,1);
                 j = j + 1;
                 index_even = index_even + 2;
                 
             end
                          
             integral = (last - first)*(func_first + 4*sum(func_odd) + 2*sum(func_even) + func_last)/(3*num_segments);

             
        end
        
    end
    
end