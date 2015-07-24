classdef backward_finite_difference
    
    methods(Static)
    
        function fx = function_of_x()
           syms x;
           fx = input('Please insert function in terms of x : ');
           disp('Here is the function you input.');
           disp(fx);
        end
        
        function first_derivative = first_derivative(x, fx ,step_size)
           
            xminus1 = x - step_size;
            xminus2 = x - 2*step_size;
            
            fx0 = subs(fx, x);
            fxminus1 = subs(fx, xminus1);
            fxminus2 = subs(fx, xminus2);
            
            numerator = fxminus2 - 4*fxminus1 + 3*fx0;
            denominator = 2*step_size;
            
            first_derivative = numerator/denominator;
            
        end
        
        function second_derivative = second_derivative(x, fx, step_size)
            
            xminus1 = x - step_size;
            xminus2 = x - 2*step_size;
            xminus3 = x - 3*step_size;
            
            fx0 = subs(fx, x);
            fxminus1 = subs(fx, xminus1);
            fxminus2 = subs(fx, xminus2);
            fxminus3 = subs(fx, xminus3);
            
            numerator = -fxminus3 + 4*fxminus2 - 5*fxminus1 + 2*fx0;
            denominator = step_size^2;
            
            second_derivative = numerator/denominator;
            
        end
        
        function third_derivative = third_derivative(x , fx, step_size)
            
            xminus1 = x - step_size;
            xminus2 = x - 2*step_size;
            xminus3 = x - 3*step_size;
            xminus4 = x - 4*step_size;
            
            fx0 = subs(fx, x);
            fxminus1 = subs(fx, xminus1);
            fxminus2 = subs(fx, xminus2);
            fxminus3 = subs(fx, xminus3);
            fxminus4 = subs(fx, xminus4);
            
            numerator = 3*fxminus4 - 14*fxminus3 + 24*fxminus2 - 18*fxminus1 +5*fx0;
            denominator = 2*(step_size^3);
            
            third_derivative = numerator/denominator;
            
        end
        
        function fourth_derivative = fourth_derivative(x, fx, step_size)
            
            xminus1 = x - step_size;
            xminus2 = x - 2*step_size;
            xminus3 = x - 3*step_size;
            xminus4 = x - 4*step_size;
            xminus5 = x - 5*step_size;
            
            fx0 = subs(fx, x);
            fxminus1 = subs(fx, xminus1);
            fxminus2 = subs(fx, xminus2);
            fxminus3 = subs(fx, xminus3);
            fxminus4 = subs(fx, xminus4);
            fxminus5 = subs(fx, xminus5);
            
            numerator = -2*fxminus5 + 11*fxminus4 -24*fxminus3 + 26*fxminus2 - 14*fxminus1 + 3*fx0;
            denominator = step_size^4;
            
            fourth_derivative = numerator/denominator;
            
        end
        
    end
    
end
