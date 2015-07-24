classdef runge_kutta
   
    methods(Static)
       
       function fxy = function_of_xy()
           
           syms x y;
           fxy = input('Please insert function in terms of x & y : ');
           disp('Here is the function you input.');
           disp(fxy);
           disp(' ');
           
       end
       
       function [x_low x_up] = get_boundary_x()
          
           x_low = input('Enter lower boundary of x: ');
           x_up = input('Enter upper boundary of x: ');
           
       end
       
       function [ynew h] = rk_second_order(x_low, x_up, y_init, fxy)
           
           disp(' ');
           disp('How many increments from the initial value of x ');
           disp('to the final value of x do you want to implement?');
           
           steps = input('Input number of steps. ');
           h = (abs(x_up - x_low))/steps;
           
           xraw = x_low;
           yraw = y_init;
           table_title = sprintf('%10s\t%10s\t%10s\t%10s\t%10s','xi', 'yi','k1', 'k2','yi+1');
           disp(' ');
           disp(table_title);
           
           while x_up > xraw
                
               % Heuns Method
               
                syms x y;
                fy1 = subs(fxy, x, xraw);
                k1 = subs(fy1, y, yraw);
                fy2 = subs(fxy, x, xraw + h);
                k2 = subs(fy2, y, yraw + h*k1);
                
                ynew = yraw + (0.5*k1 + 0.5*k2)*h;
     
                
                
                message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g', xraw,yraw,k1, k2, ynew);
                disp(message);
                       
                
                xraw = xraw + h;
                yraw = ynew;
               
                
                if (x_up <= xraw)
                    break;
                end
                
           end
           
           disp(' ');
       end
       
       function [ynew h] = rk_third_order(x_low, x_up, y_init, fxy)
           
           disp(' ');
           disp('How many increments from the initial value of x ');
           disp('to the final value of x do you want to implement?');
           
           steps = input('Input number of steps. ');
           h = (abs(x_up - x_low))/steps;
           
           xraw = x_low;
           yraw = y_init;
           table_title = sprintf('%10s\t%10s\t%10s\t%10s\t%10s\t%10s','xi', 'yi','k1', 'k2','k3','yi+1');
           disp(' ');
           disp(table_title);
           
           while x_up > xraw
                
                syms x y;

                fy1 = subs(fxy, x,xraw);
                k1 = subs(fy1, y, yraw);
               
                fy2 = subs(fxy, x ,xraw + 0.5*h);
                k2 = subs(fy2, y, yraw + 0.5*h*k1);
                fy3 = subs(fxy, x,xraw + h);
                k3 = subs(fy3, y, yraw + h*(-k1 + 2*k2));
                
                ynew = yraw + (1/6)*(k1 + 4*k2 + k3)*h;
                xraw = xraw + h;
                
                message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g', xraw, yraw, k1, k2, k3, ynew);
                disp(message);
                
                yraw = ynew;
               
                if (x_up <= xraw)
                    break;
                end
                
                
                
           end
           

           message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g', xraw, yraw, k1, k2, k3, ynew);
           disp(message);
                    
           disp(' ');
       
       end
       
       function [ynew h] = rk_fourth_order(x_low, x_up, y_init, fxy)
           
           disp(' ');
           disp('How many increments from the initial value of x ');
           disp('to the final value of x do you want to implement?');
           
           steps = input('Input number of steps. ');
           h = (abs(x_up - x_low))/steps;
           
           xraw = x_low;
           yraw = y_init;
           table_title = sprintf('%10s\t%10s\t%10s\t%10s\t%10s\t%10s\t%10s','xi', 'yi','k1', 'k2','k3','k4','yi+1');
           disp(' ');
           disp(table_title);
           
           while x_up > xraw
                

                syms x y;
                
                fy1 = subs(fxy, x, xraw);
                k1 = subs(fy1, y, yraw);
                
                fy2 = subs(fxy, x,xraw + 0.5*h);
                k2 = subs(fy2, y, yraw + 0.5*h*k1);
                
                fy3 = subs(fxy, x, xraw + 0.5*h);
                k3 = subs(fy3, y, yraw + 0.5*h*k2);
                
                fy4 = subs(fxy, x, xraw + h);
                k4 = subs(fy4, y, yraw + k3*h);
                
                ynew = yraw + (1/6)*(k1 + 2*k2 + 2*k3 + k4)*h;
                
                message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g', xraw, yraw, k1, k2, k3,k4, ynew);
                disp(message);
                
                if (x_up <= xraw)
                    break;
                end
                
                xraw = xraw + h;
                yraw = ynew;
               
           end
           
           
           disp(' ');
       
       end
       
       function [ynew h] = rk_fifth_order(x_low, x_up, y_init, fxy)
           
           disp(' ');
           disp('How many increments from the initial value of x ');
           disp('to the final value of x do you want to implement?');
           
           steps = input('Input number of steps. ');
           h = (abs(x_up - x_low))/steps;
           
           xraw = x_low;
           yraw = y_init;

           table_title = sprintf('%10s\t%10s\t%10s\t%10s\t%10s\t%10s\t%10s\t%10s\t%10s','xi', 'yi','k1', 'k2','k3','k4','k5','k6','yi+1');
           disp(' ');
           disp(table_title);
           
           while x_up > xraw
                
                syms x y;
                
                fy1 = subs(fxy, x, xraw);
                k1 =  subs(fy1, y, yraw);
                
                fy2 = subs(fxy, x, xraw + (1/4)*h);
                k2 = subs(fy2, y, yraw + (1/4)*k1*h);
                
                fy3 = subs(fxy, x ,xraw + (1/4)*h);
                k3 = subs(fy3, y, yraw + (h/8)*(k1 + k2));
                
                fy4 = subs(fxy, x ,xraw + (1/2)*h);
                k4 = subs(fy4, y,  yraw + h*(-0.5*k2 + k3));
                
                fy5 = subs(fxy, x,xraw + (3/4)*h);
                k5 = subs(fy5, y, yraw + (3*h/16)*(k1 + 3*k4));
                
                fy6 = subs(fxy, x, xraw + h);
                k6 = subs(fy6, y, yraw + (h/7)*(-3*k1 + 2*k2 + 12*k3 ...
                    -12*k4 + 8*k5));
                
                ynew = yraw + (1/90)*(7*k1 + 32*k3 + 12*k4 + 32*k5 + 7*k6)*h;
                
                
                message = sprintf('%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g\t%10.5g', xraw, yraw, k1, k2, k3,k4,k5,k6, ynew);
                disp(message);

                
                xraw = xraw + h;
                yraw = ynew;
                
                if (x_up <= xraw)
                    break;
                end
               
           end
           
           
           disp(' ');
       
       end
        
    end
end