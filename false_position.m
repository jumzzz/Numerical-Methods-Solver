classdef false_position
    
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

                   
                   fx_low = subs(fx, x_low);

                   fx_up = subs(fx, x_up);
                   
                   x_root = x_up - (fx_up*(x_low - x_up))/(fx_low - fx_up);
                   
                   fx_root = subs(fx, x_root);


                   if ( acceptable_error >= relative_error)
                      remark = 'acceptable'; 
                   end

                   message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10s', x_low, x_up, x_root, fx_low*fx_root, relative_error, remark);
                   disp(message);

                   if ( acceptable_error < relative_error)

                       if (fx_low*fx_root) < 0

                           x_up = x_root;
                           relative_error = abs((x_old - x_root)/x_root)*100;  

                       elseif (fx_low*fx_root) > 0
                           x_low = x_root;

                           relative_error = abs((x_old - x_root)/x_root)*100;

                       elseif fx_low*fx_root == 0
                           relative_error = 0;
                       end

                       x_old = x_root;
                   end
               end

           end

       
        
    end
    
end