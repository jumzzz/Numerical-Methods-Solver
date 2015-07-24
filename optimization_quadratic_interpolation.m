classdef optimization_quadratic_interpolation
   
    methods(Static)
        
       function fx = function_of_x()
           syms x;
           fx = input('Please insert function in terms of x : ');
           disp('Here is the function you input.');
           disp(' ');
           disp(fx);
       end
        
       function [x0 x1 x2] = input_initial_guess()
        
           x0 = input('Please input the initial guess x0: ');
           x1 = input('Please input the initial guess x1: ');
           x2 = input('Please input the initial guess x2: ');
           disp(' ');
           disp(' ');
           
       end
       
       function [optimum_point relative_error] = solve_quad_interpolation(x0, x1, x2, fx, acceptable_error)
          
           range = [x0 x1 x2];
           range = sort(range);
           x0 = range(1);
           x1 = range(2);
           x2 = range(3);
           
           fx0 = subs(fx, x0); % Substitute val x0 to fx
           fx1 = subs(fx, x1); % Substitute val x1 to fx
           fx2 = subs(fx, x2); % Substitute val x2 to fx
           xold = x1;
           
           relative_error = 100;
           x0_str = 'x0';
           x1_str = 'x1';
           x2_str = 'x2';
           fx0_str = 'fx0';
           fx1_str = 'fx1';
           fx2_str = 'fx2';
           x3_str = 'x3';
           relative_error_str = 'relative error';
           title_message = sprintf('%10s\t%10s\t%10s\t%10s\t%10s\t%10s\t%10s\t%10s\t', x0_str, x1_str, x2_str,...
               fx0_str, fx1_str, fx2_str, x3_str, relative_error_str);
           disp(title_message);
           disp(' ');
           
           while(acceptable_error < relative_error)
               
               numerator = fx0*(x1^2 - x2^2) + fx1*(x2^2 - x0^2) + fx2*(x0^2- x1^2);
               denominator = 2*(fx0*(x1 - x2) + fx1*(x2 - x0) + fx2*(x0 - x1));
           
               x3 = numerator/denominator;
               xnew = x3;
               relative_error = abs(((xnew - xold)/xnew)*100);
               xold = x3;
              
              
               
               if( sum(x3 == range) >= 1 )
                  
                   message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t', x0, x1, x2, fx0, fx1, fx2, x3, relative_error);
                   disp(message);
                   relative_error = 0;

               elseif (x3 > x2)
                  
                   x = [range x3];
                   
                   message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t', x0, x1, x2, fx0, fx1, fx2, x3, relative_error);
                   disp(message);
                   x0 = x(2);
                   x1 = x(3);
                   x2 = x(4);
                   fx0 = subs(fx, x0); % Substitute val x0 to fx
                   fx1 = subs(fx, x1); % Substitute val x1 to fx
                   fx2 = subs(fx, x2); % Substitute val x2 to fx
                   
               elseif (x3 < x0)
                   
                   x = [x3 range];
                   
                   message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t', x0, x1, x2, fx0, fx1, fx2, x3, relative_error);
                   disp(message);
                   x0 = x(1);
                   x1 = x(2);
                   x2 = x(3);
                   fx0 = subs(fx, x0); % Substitute val x0 to fx
                   fx1 = subs(fx, x1); % Substitute val x1 to fx
                   fx2 = subs(fx, x2); % Substitute val x2 to fx
                   
                   
               elseif ((x0 < x3)&&(x3 < x2))
                   
                   if ( x3 < x1)
                       
                       x = [x0 x3 x1 x2];
                                              
                       message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t', x0, x1, x2, fx0, fx1, fx2, x3, relative_error);
                       disp(message);
                       x0 = x(1);
                       x1 = x(2);
                       x2 = x(3);
                       
                       fx0 = subs(fx, x0); % Substitute val x0 to fx
                       fx1 = subs(fx, x1); % Substitute val x1 to fx
                       fx2 = subs(fx, x2); % Substitute val x2 to fx
                   
                   
                   elseif ( x1 < x3 )
                       
                       x = [x0 x1 x3 x2];
                       
                       message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t', x0, x1, x2, fx0, fx1, fx2, x3, relative_error);
                       disp(message);
                       x0 = x(2);
                       x1 = x(3);
                       x2 = x(4);
                       
                       fx0 = subs(fx, x0); % Substitute val x0 to fx
                       fx1 = subs(fx, x1); % Substitute val x1 to fx
                       fx2 = subs(fx, x2); % Substitute val x2 to fx
                   
                       
                   end
                   
               end
               
                
           end
           
           optimum_point = x3;
            
       end
    end
    
end