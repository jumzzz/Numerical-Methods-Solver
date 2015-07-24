classdef euler_method
   
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
       
       function [ yraw h ] = solve_for_de(x_low, x_up, y_init, fxy)
           
           disp(' ');
           disp('How many increments from the initial value of x ');
           disp('to the final value of x do you want to implement?');
           
           steps = input('Input number of steps. ');
           h = (abs(x_up - x_low))/steps;
           
           xraw = x_low;
           yraw = y_init;
           table_title = sprintf('%3s \t%3s','x', 'y');
           disp(' ');
           disp(table_title);
           
           while x_up > xraw
  
                syms x y;
                message = sprintf('%3.5g \t%3.5g', xraw,yraw);
                disp(message);
                fy = subs(fxy, x ,xraw);
                fsolved = subs(fy, y, yraw);
                yraw = yraw + fsolved*h;
                xraw = xraw + h;
                
                if (x_up <= xraw)
                    break;
                end
               
           end
           
           message = sprintf('%3.5g \t%3.5g', xraw,yraw);
           disp(message);
           
           disp(' ');
       end
    end
    
    
end