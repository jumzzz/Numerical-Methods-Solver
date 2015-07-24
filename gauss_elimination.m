classdef gauss_elimination
    
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
           disp('Example of input [1 2 3]');
           disp(' ');
           B = input('Input matrix B');
           disp(' ');
           disp('Here is your input matrix B. ');
           disp(B);
           
       end
       
        function [A,t]=solve_gauss_elim(A)
            

            tic;
            s=size(A);
            a=min(s);
            for ii=1:a

               [t,r]=max(abs(A(ii:end,ii))); 
               t=A(r+ii-1,:);
               A(r+ii-1,:)=A(ii,:);
               A(ii,:)=t;

               A(ii,[1:ii-1 ii+1:end])= A(ii,[1:ii-1 ii+1:end])/A(ii,ii);
               A(ii,ii)=1;
               ss=A(ii,[ii+1:end]);
               for jj=[1:ii-1 ii+1:a]
                  A(jj,[ii+1:end])= A(jj,ii+1:end)-A(jj,ii).*ss;
               end 
               A([1:ii-1 ii+1:end],ii)=0; 
            end
            t=toc;

        
        end
    
    end
    
end