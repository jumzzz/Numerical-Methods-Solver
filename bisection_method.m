classdef bisection_method
    
   methods(Static)
      
       function fx = function_of_x()
           syms x;
           fx = input('Please insert function in terms of x : ');
           disp('Here is the function you input.');
           disp(fx);
       end
        
       function [x_low x_up] = get_boundary()
          
           x_low = input('Enter lower boundary: ');
           x_up = input('Enter upper boundary: ');
           
           
       end
       
       
       function [x_root relative_error] = solve_for_root(x_low, x_up, fx, acceptable_error)
          
           
           relative_error = 100;
           remark = 'continue';
           
           x_old = 0;
           
           table_title = sprintf('%10s\t%10s\t%10s\t%10s\t%10s\t%10s','xl','xu','xr','f(xl)*f(xr)','Error %','Remark');
           disp(table_title);
           
           while(acceptable_error < relative_error)
                
               x_mid = (x_low + x_up)/2;
               fx_low = subs(fx, x_low);
               
               fx_mid = subs(fx, x_mid);
               
               
               
               if ( acceptable_error >= relative_error)
                  remark = 'acceptable'; 
               end
               
               message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10s', x_low, x_up, x_mid, fx_low*fx_mid, relative_error, remark);
               disp(message);
               
               if ( acceptable_error < relative_error)
                  
                   if (fx_low*fx_mid) < 0

                       x_up = x_mid;
                       relative_error = abs((x_old - x_mid)/x_mid)*100;  

                   elseif (fx_low*fx_mid) > 0
                       x_low = x_mid;
                       
                       relative_error = abs((x_old - x_mid)/x_mid)*100;

                   elseif fx_low*fx_mid == 0
                       relative_error = 0;
                   end
                 
                   x_old = x_mid;
               end
           end
           
           x_root = x_mid;
       end
       
       
       
   end
    
end