classdef center_finite_difference
    
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
            
            xminus1 = x - step_size;
            xminus2 = x - 2*step_size;
            
            fxplus1 = subs(fx, xplus1);
            fxplus2 = subs(fx, xplus2);
            
            fxminus1 = subs(fx, xminus1);
            fxminus2 = subs(fx, xminus2);
            
            numerator = -fxplus2 + 8*fxplus1 - 8*fxminus1 + fxminus2;
            denominator = 12*step_size;
            
            first_derivative = numerator/denominator;
            
        end
        
        function second_derivative = second_derivative(x, fx, step_size)
            
            xplus1 = x + step_size;
            xplus2 = x + 2*step_size;
            
            xminus1 = x - step_size;
            xminus2 = x - 2*step_size;
            
            fx0 = subs(fx, x);
            
            fxplus1 = subs(fx, xplus1);
            fxplus2 = subs(fx, xplus2);
            
            fxminus1 = subs(fx, xminus1);
            fxminus2 = subs(fx, xminus2);
            
            numerator = -fxplus2 + 16*fxplus1 - 30*fx0 + 16*fxminus1 - fxminus2;
            denominator = 12*(step_size^2);
            
            second_derivative = numerator/denominator;
            
        end
        
        function third_derivative = third_derivative(x , fx, step_size)
            
            xplus1 = x + step_size;
            xplus2 = x + 2*step_size;
            xplus3 = x + 3*step_size;
            
            xminus1 = x - step_size;
            xminus2 = x - 2*step_size;
            xminus3 = x - 3*step_size;
            
            
            fxplus1 = subs(fx, xplus1);
            fxplus2 = subs(fx, xplus2);
            fxplus3 = subs(fx, xplus3);
            
            fxminus1 = subs(fx, xminus1);
            fxminus2 = subs(fx, xminus2);
            fxminus3 = subs(fx, xminus3);
            
            numerator = -fxplus3 + 8*fxplus2 - 13*fxplus1 + 13*fxminus1 -8*fxminus2 + fxminus3;
            denominator = 8*(step_size^3);
            
            third_derivative = numerator/denominator;
            
        end
        
        function fourth_derivative = fourth_derivative(x, fx, step_size)
            
            xplus1 = x + step_size;
            xplus2 = x + 2*step_size;
            xplus3 = x + 3*step_size;
            
            xminus1 = x - step_size;
            xminus2 = x - 2*step_size;
            xminus3 = x - 3*step_size;
            
            fx0 = subs(fx, x);
            
            fxplus1 = subs(fx, xplus1);
            fxplus2 = subs(fx, xplus2);
            fxplus3 = subs(fx, xplus3);
            
            fxminus1 = subs(fx, xminus1);
            fxminus2 = subs(fx, xminus2);
            fxminus3 = subs(fx, xminus3);
            
            numerator = -fxplus3 + 12*fxplus2 + 39*fxplus1 + 56*fx0 - 39*fxminus1 + 12*fxminus2 + fxminus3;
            denominator = 6*(step_size^4);
            
            fourth_derivative = numerator/denominator;
            
        end
        
    end
    
end
