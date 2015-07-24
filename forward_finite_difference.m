
classdef forward_finite_difference
    
    
    methods(Static)
       
        function fx = function_of_x()
           syms x;
           fx = input('Please insert function in terms of x : ');
           disp('Here is the function you input.');
           disp(fx);
        end
        
        function first_derivative = first_derivative(x, fx ,step_size)
           
            xplus1 = x + step_size;
            xplus2 = x + 2*step_size;
            
            fx0 = subs(fx, x);
            fx1 = subs(fx, xplus1);
            fx2 = subs(fx, xplus2);
            
            numerator = -fx2 + 4*fx1 - 3*fx0;
            denominator = 2*step_size;
            
            first_derivative = numerator/denominator;
            
        end
        
        function second_derivative = second_derivative(x, fx, step_size)
            
            xplus1 = x + step_size;
            xplus2 = x + 2*step_size;
            xplus3 = x + 3*step_size;
            
            fx0 = subs(fx, x);
            fx1 = subs(fx, xplus1);
            fx2 = subs(fx, xplus2);
            fx3 = subs(fx, xplus3);
            
            numerator = -fx3 + 4*fx2 - 5*fx1 + 2*fx0;
            denominator = step_size^2;
            
            second_derivative = numerator/denominator;
            
        end
        
        function third_derivative = third_derivative(x , fx, step_size)
            
            xplus1 = x + step_size;
            xplus2 = x + 2*step_size;
            xplus3 = x + 3*step_size;
            xplus4 = x + 4*step_size;
            
            fx0 = subs(fx, x);
            fx1 = subs(fx, xplus1);
            fx2 = subs(fx, xplus2);
            fx3 = subs(fx, xplus3);
            fx4 = subs(fx, xplus4);
            
            numerator = -3*fx4 + 14*fx3 - 24*fx2 + 18*fx1 -5*fx0;
            denominator = 2*(step_size^3);
            
            third_derivative = numerator/denominator;
            
        end
        
        function fourth_derivative = fourth_derivative(x, fx, step_size)
            
            xplus1 = x + step_size;
            xplus2 = x + 2*step_size;
            xplus3 = x + 3*step_size;
            xplus4 = x + 4*step_size;
            xplus5 = x + 5*step_size;
            
            fx0 = subs(fx, x);
            fx1 = subs(fx, xplus1);
            fx2 = subs(fx, xplus2);
            fx3 = subs(fx, xplus3);
            fx4 = subs(fx, xplus4);
            fx5 = subs(fx, xplus5);
            
            numerator = -2*fx5 + 11*fx4 -24*fx3 + 26*fx2 - 14*fx1 + 3*fx0;
            denominator = step_size^4;
            
            fourth_derivative = numerator/denominator;
            
        end
        
    end
    
end