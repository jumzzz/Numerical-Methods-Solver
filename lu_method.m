classdef lu_method
    
   methods(Static)
      
       function display_instruction()
          
           disp('This program follows a format Ax = B');
           disp('Matrix A must be a square matrix mxn where m = n ');
           disp('Matrix B is a 1-D matrix with length m');
           disp(' ');
       end
       
       function A = input_matrix_A()
          
           disp('Example input of a 3x3 matrix. ');
           disp('[1 1 1; 1 1 1; 1 1 1]');
           disp('Use the similar format to input your desired matrix');
           disp(' ');
           A = input('Please enter a square matrix: ');
           disp(' ');
           disp('Here is your input matrix A. ');
           disp(A);
           
       end
       
       function B = input_matrix_B()
          
           disp('Input a mx1 matrix where m is equal the number of rows');
           disp('matrix A');
           disp('Example of input [1 2 3]: ');
           disp(' ');
           B = input('Input matrix B: ');
           disp(' ');
           disp('Here is your input matrix B. ');
           disp(B);
           
       end
       
       function X = solve_for_x(A,B)
          
           X = linsolve(A,transpose(B));
           disp(' ');
           disp('Here is the solved values of [x1; x2; x3] ');
           disp(X);
           
       end
       
   end
    
end