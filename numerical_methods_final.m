clear all;
close all;
clc;

disp('Final Project in Numerical Methods Lab');
disp('MATH160L/<Insert Section Here>');
disp('Date: August 27, 2014 ');
disp('Submitted by: ');
disp('1. <Name/Student Number>');
disp('2. <Name/Student Number>');
disp('3. <Name/Student Number>');
disp('4. <Name/Student Number>');
disp('5. <Name/Student Number>');

disp('Submitted to: Engr. Jipcy Mauriss Narvaez');

disp(' ');
disp(' ');

user_approve = 'y';

while(user_approve == 'y') || (user_approve == 'Y')
    
        disp('Please enter the number of the desired topic.');
        disp(' ');
        disp('1. Roots of Non-Linear Equations');
        disp('2. Optimization');
        disp('3. Systems of Linear Equations');
        disp('4. Regression');
        disp('5. Interpolation');
        disp('6. Numerical Integration');
        disp('7. Numerical Differentiation');
        disp('8. Ordinary Differential Equations');
        disp(' ');

        first_menu = input('Enter the number: ');
        disp(' ');

        switch first_menu

            case 1 % NON LINEAR EQUATION OPTION
            % NON LINEAR EQUATION CODE STARTS
                disp('Please enter the number of the desired method for finding ');
                disp('the Roots of Non-Linear Equation. ');
                disp('1. Newton-Raphson Method');
                disp('2. Secant Method');
                disp('3. Bisection Method');
                disp('4. False Position Method ');

                disp(' ');

                second_menu = input('Enter the number: ');
                disp(' ');

                switch second_menu

                    case 1  % << Newton Raphson Method Option
                     % Enter code for Newton-Raphson Here
                     % Newton Raphson Starts
                     %%%%%%%%%%%%%%%%%%%%%

                       fx = newton_raphson.function_of_x();
                       disp(' ');
                       x_guess = input('Please input your initial guess: ');
                       disp(' ');
                       acceptable_error = abs(input('Please input your desired error limit in terms of percent: '));
                       disp(' ');
                       [x_new, relative_error] = newton_raphson.solve_for_root(x_guess, fx, acceptable_error);
                       disp(' ');
                       message = sprintf('The root found is %0.5g with a relative error of %0.5g percent ',x_new, relative_error);

                       disp(' ');
                       disp(message);
                       disp(' ');
                       
               
                     % Newton Raphson Ends
                     
                      user_approve = input('Do you want to try again? [y/n]: ', 's');

                    case 2  % << Secant Method Option
                     % Enter code for Secant Method here
                     % Secant Method Starts
                     %%%%%%%%%%%%%%%%%%%%
                        fx = secant_method.function_of_x();
                        disp(' ');
                        [x0 x1] = secant_method.get_initial_guess();
                        acceptable_error = abs(input('Please input your desired error limit in terms of percent: '));
                        [x_new relative_error] = secant_method.solve_for_root(x0, x1, fx, acceptable_error);
                        message = sprintf('The root found is %0.5g with a relative error of %0.5g percent', x_new, relative_error);

                        disp(' ');
                        disp(message);
                        disp(' ');
                     % Secant Method Ends   
                     
                      user_approve = input('Do you want to try again? [y/n]: ', 's');


                    case 3 % << Bisection Method Option
                        %   Enter code for Bisection Method here
                        %   Bisection Method Starts
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                            fx = bisection_method.function_of_x();
                            disp(' ');
                            [x_low x_up ] = bisection_method.get_boundary();
                            acceptable_error = abs(input('Please input your desired error limit in terms of percent: '));
                            disp(' ');
                            [ x_root relative_error ] = bisection_method.solve_for_root(x_low, x_up, fx, acceptable_error);

                            message = sprintf('The root found is %0.5g with a relative error of %0.5g percent', x_root, relative_error);

                            disp(' ');
                            disp(message);
                            disp(' ');
                        %   Bisection Method Ends
                        
                         user_approve = input('Do you want to try again? [y/n]: ', 's');

                    case 4 % << False Position Method Option
                        %   Enter code for False Position here
                        %   False Position Method Starts
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                            fx  = false_position.function_of_x();
                            disp(' ');
                            [x_low x_up ] = false_position.get_boundary();
                            acceptable_error = abs(input('Please input your desired error limit in terms of percent: '));
                            disp(' ');
                            [ x_root relative_error ] = false_position.solve_for_root(x_low, x_up, fx, acceptable_error);

                            message = sprintf('The root found is %0.5g with a relative error of %0.5g percent', x_root, relative_error);

                            disp(' ');
                            disp(message);
                            disp(' ');


                        %   False Position Method Ends
                        
                         user_approve = input('Do you want to try again? [y/n]: ', 's');

                    otherwise
                        error('Invalid Input/Option.');

                end
            % NON LINEAR EQUATION CODE ENDS    
            case 2 % << OPTIMIZATION OPTION
            % OPTIMIZATION STARTS    

                disp('Please enter the number of the desired method for Numerical ');
                disp('Optimization. ');
                disp('1. Newtons Method');
                disp('2. Quadratic Interpolation');
                disp(' ');

                second_menu = input('Enter the number: ');
                disp(' ');

                switch second_menu

                    case 1 % << Newton's Optimization Option

                     % Enter code for Newton-Optimization Here
                     % Newton Optimization Starts
                     %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        fx = optimization_newton.function_of_x();
                        disp(' ');
                        x_old = input('Input your initial guess : ');
                        disp(' ');
                        acceptable_error = abs(input('Please input your desired error limit in terms of percent: '));
                        disp(' ');
                        [x_new relative_error] = optimization_newton.find_optimum_point(x_old, fx, acceptable_error);
                        message = sprintf('The optimum point is %0.5g with an relative error of %0.5g percent.', x_new ,relative_error);
                        disp(' ');
                        disp(message);
                        disp(' ');
                        
                     % Newton Optimization Ends
                     
                      user_approve = input('Do you want to try again? [y/n]: ', 's');

                    case 2 % << Quadratic Interpolation Optimization Option

                      % Enter code for Quadratic Interpolation here
                      % Quadratic Interpolation Starts
                      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        fx = optimization_quadratic_interpolation.function_of_x();
                        [x0 x1 x2] = optimization_quadratic_interpolation.input_initial_guess();
                        acceptable_error = abs(input('Please input your desired error limit in terms of percent: '));
                        disp(' ');
                        [optimum_point relative_error] = optimization_quadratic_interpolation.solve_quad_interpolation(x0, x1, x2, fx, acceptable_error);
                        message = sprintf('The optimum point is %0.5g and the relative error %0.5g. ', optimum_point, relative_error);
                        disp(' ');
                        disp(message);
                        
                      % Quadratic Interpolation Ends
                      
                       user_approve = input('Do you want to try again? [y/n]: ', 's');

                    otherwise
                        error('Invalid Input/Option.');

                end

            %OPTIMIZATION ENDS
            case 3 %% << SYSTEM OF LINEAR EQUATION OPTION
            % SYSTEM OF LINEAR EQUATION STARTS
                disp('Please enter the number of the desired method for Systems of  ');
                disp('Linear Equations. ');
                disp('1. LU Method');
                disp('2. Gauss Method');
                disp(' ');

                second_menu = input('Enter the number: ');
                disp(' ');

                switch second_menu

                    case 1
                    % Enter LU Method Code Here
                    % LU Method Starts
                        lu_method.display_instruction();
                        A = lu_method.input_matrix_A();
                        B = lu_method.input_matrix_B();
                        X = lu_method.solve_for_x(A,B);
                    
                    % LU Method Ends
                    
                     user_approve = input('Do you want to try again? [y/n]: ', 's');

                    case 2

                    % Enter Gauss Method Here
                    % Gauss Method Starts
                        gauss_elimination.display_instruction();
                        A = gauss_elimination.input_matrix_A();
                        B = gauss_elimination.input_matrix_B();
                        C = [A transpose(B)];
                        [A_solved x ] = gauss_elimination.solve_gauss_elim(C);
                        disp(' ');
                        disp(' Here is the resulting matrix solved using gauss elimination: ');
                        disp(' ');
                        disp(A_solved);
                        disp(' ');
                        
                    % Gauss Method Ends
                    
                     user_approve = input('Do you want to try again? [y/n]: ', 's');

                    otherwise
                      error('Invalid Input/Option.');

                end


            % SYSTEM OF LINEAR EQUATION ENDS
            case 4 %  << REGRESSION OPTION

            % REGRESSION STARTS
                disp('Please enter the number of the desired method for Numerical ');
                disp('Regression. ');
                disp('1. Linear Regression');
                disp('2. Polynomial Regression');
                disp(' ');

                second_menu = input('Enter the number: ');
                disp(' ');

                switch second_menu

                    case 1 % Linear Regression Option
                    % Enter Linear Regression Code Here
                    % Linear Regression Starts
                        ind_var = linear_regression.ind_var_input();
                        disp(' ');
                        dep_var = linear_regression.dep_var_input(ind_var);
                        disp(' ');
                        disp('     x    fx ');
                        table = linear_regression.display_table(ind_var, dep_var);
                        a1 = linear_regression.solve_a1(ind_var, dep_var);
                        a0 = linear_regression.solve_a0(ind_var, dep_var, a1);

                        if (a1 >= 0)
                           message = sprintf('The linear function f(x) = %0.5g + %0.5gx',a0, a1);
                        elseif (a1 < 0)
                           a1 = (-1)*a1;
                           message = sprintf('The resulting linear function f(x) = %0.5g - %0.5gx', a0, a1);
                        end
                        disp(message);
                        
                    % Linear Regression Ends
                    
                     user_approve = input('Do you want to try again? [y/n]: ', 's');

                    case 2 % Polynomial Regression Option
                    % Enter Polynomial Regression Code Here    
                    % Polynomial Regression Starts
                        ind_var = polynomial_regression.ind_var_input();
                        disp(' ');
                        dep_var = polynomial_regression.dep_var_input(ind_var);
                        disp(' ');
                        n_order = input('Please input the order of your polynomial regression: ');
                        disp(' ');
                        disp('     x    fx ');
                        table = polynomial_regression.display_table(ind_var, dep_var);
                        poly_mat = polynomial_regression.poly_func(ind_var, dep_var, n_order);
                        disp(' ');
                        disp('The resulting equation will be: ');
                        disp(poly_mat);

                    % Polynomial Regression Ends
                    
                     user_approve = input('Do you want to try again? [y/n]: ', 's');

                    otherwise
                      error('Invalid Input/Option.');

                end
            % REGRESSION ENDS   

            case 5  % << INTERPOLATION OPTION

            %INTERPOLATION STARTS
                disp('Please enter the number of the desired method for Numerical ');
                disp('Interpolation. ');
                disp('1. Lagrange Interpolation');
                disp('2. Newton Divided Difference');
                disp(' ');

                second_menu = input('Enter the number: ');
                disp(' ');

                switch second_menu

                    case 1 % Langrage Interpolation Option
                    % Enter Langrage Interpolation Code Here
                    % Langrage Interpolation Starts
                        ind_var = lagrange_interpolation.ind_var_input();
                        dep_var = lagrange_interpolation.dep_var_input(ind_var);
                        point = input('Please enter which point to do you want to solve: ');
                        disp(' ');
                        disp('     x    fx ');
                        table = lagrange_interpolation.display_table(ind_var, dep_var);
                        fx_solved = lagrange_interpolation.interpolate(ind_var, dep_var, point);
                        message = sprintf('The function of %0.5g is %0.5g', point, fx_solved);
                        disp(message);
                        
                    % Langrage Interpolation Ends
                    
                     user_approve = input('Do you want to try again? [y/n]: ', 's');

                    case 2 % Newton Interpolation Option
                    % Enter Newton Interpolation Code Here    
                    % Newton Interpolation Starts
                        ind_var = newton_divided_difference.ind_var_input();
                        dep_var = newton_divided_difference.dep_var_input(ind_var);
                        point = input('Please enter which point to do you want to solve: ');
                        disp(' ');
                        disp('     x    fx ');
                        table = newton_divided_difference.display_table(ind_var, dep_var);
                        fx_solved = newton_divided_difference.interpolate(ind_var, dep_var, point);
                        message = sprintf('The function of %0.5g is %0.5g', point, fx_solved);
                        disp(message);

                    % Newton Interpolation Ends
                    
                     user_approve = input('Do you want to try again? [y/n]: ', 's');

                    otherwise
                      error('Invalid Input/Option.');

                end
            %INTERPOLATION ENDS
            case 6 % << NUMERICAL INTEGRATION OPTION

            %NUMERICAL INTEGRATION STARTS
                disp('Please enter the number of the desired method for Numerical ');
                disp('Integration. ');
                disp('1. Simpson Rule');
                disp('2. Trapezoidal Rule');
                disp(' ');

                second_menu = input('Enter Number of Option: ');
                disp(' ');


                switch second_menu

                    case 1 % << Simpson Rule Option
                        % Enter Simpson Rule Code Here
                        % Simpson Rule Starts
                        disp('Choose the order of the Simpson Rule Method');
                        disp('1. Single Application ');
                        disp('2. Multiple Application ');
                        disp(' ');

                        third_menu = input('Please Enter Number: ');
                        disp(' ');

                        switch third_menu
                            case 1
                                fx = simpson_rule.function_of_x();
                                first = input('Input first bound of the integral: ');
                                last = input('Input last bound of the integral: ');
                                integral = simpson_rule.single_application_functional(first, last, fx);
                                disp(' ');
                                disp('The integral of: ');
                                disp(fx);
                                message = sprintf('from boundaries %d to %d is %0.5g', first, last, integral);
                                disp(message);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 2
                                fx = simpson_rule.function_of_x();
                                first = input('Input first bound of the integral: ');
                                last = input('Input last bound of the integral: ');
                                number_of_segments = input('Input the desired Number of Segments: ');
                                integral = simpson_rule.multiple_application_functional(first, last, fx, number_of_segments);
                                disp(' ');
                                disp('The integral of: ');
                                disp(fx);
                                message = sprintf('from boundaries %d to %d is %0.5f', first, last, integral);
                                disp(message);
                                
                                 user_approve = input('Do you want to try again? [y/n]: ', 's');

                            otherwise
                                error('Invalid Input/Option.');
                        end
                        % Simpson Rule Ends

                    case 2 % << Trapezoidal Rule Option
                        % Enter Trapezoidal Rule Code Here
                        % Trapezoidal Rule Starts
                        disp('Choose the order of the Trapezoidal Rule Method');
                        disp('1. Single Application ');
                        disp('2. Multiple Application ');
                        disp(' ');

                        third_menu = input('Please Enter Number: ');
                        disp(' ');

                        switch third_menu
                            case 1
                                fx = trapezoidal_rule.function_of_x();
                                first = input('Input first bound of the integral: ');
                                last = input('Input last bound of the integral: ');
                                integral = trapezoidal_rule.single_application_functional(first, last, fx);
                                disp(' ');
                                disp('The integral of: ');
                                disp(fx);
                                message = sprintf('from boundaries %d to %d is %0.5g', first, last, integral);
                                disp(message);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 2
                                fx = trapezoidal_rule.function_of_x();
                                first = input('Input first bound of the integral: ');
                                last = input('Input last bound of the integral: ');
                                number_of_segments = input('Input the desired Number of Segments: ');
                                integral = trapezoidal_rule.multiple_application_functional(first, last, fx, number_of_segments);
                                disp(' ');
                                disp('The integral of: ');
                                disp(fx);
                                message = sprintf('from boundaries %d to %d is %0.5f', first, last, integral);
                                disp(message);

                                user_approve = input('Do you want to try again? [y/n]: ', 's');
                            
                            otherwise
                                error('Invalid Input/Option.');
                        end
                        % Trapezoidal Rule Ends

                    otherwise % NUMERICAL INTEGRATION OTHERWISE
                        error('Invalid Input/Option');

                end
            %NUMERICAL INTEGRATION ENDS
            case 7  % << NUMERICAL DIFFERENTIATION OPTION

            %NUMERICAL DIFFERENTIATION STARTS
                disp('Please enter the number of the desired method for Numerical ');
                disp('Differentiation. ');
                disp('1. Forward Finite Difference');
                disp('2. Backward Finite Difference');
                disp('3. Centered Finite Difference');
                disp(' ');

                second_menu = input('Enter the number: ');
                disp(' ');

                switch second_menu

                    case 1 % << Forward Finite Difference Option
                        % Enter Forward Finite Difference Code Here
                        % Forward Finite Difference Starts
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                        disp('Choose the nth derivative for forward difference method');
                        disp('1. 1st Derivative ');
                        disp('2. 2nd Derivative ');
                        disp('3. 3rd Derivative ');
                        disp('4. 4th Derivative ');
                        disp('5. List All from 1st to 4th ');
                        disp(' ');

                        third_menu = input('Please Enter Number: ');
                        disp(' ');

                        switch third_menu

                            case 1

                                fx = forward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                first_derivative = forward_finite_difference.first_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The First Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(first_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 2

                                fx = forward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the second derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                second_derivative = forward_finite_difference.second_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The Second Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(second_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 3

                                fx = forward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the third derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                third_derivative = forward_finite_difference.third_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The Third Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(third_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 4

                                fx = forward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the third derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                fourth_derivative = forward_finite_difference.fourth_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The fourth Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(fourth_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 5

                                fx = forward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the derivatives: ');
                                step_size = input('Please enter your desired step size: ');
                                first_derivative = forward_finite_difference.first_derivative(x, fx, step_size);
                                second_derivative = forward_finite_difference.second_derivative(x, fx, step_size);
                                third_derivative = forward_finite_difference.third_derivative(x, fx, step_size);
                                fourth_derivative = forward_finite_difference.fourth_derivative(x, fx, step_size);
                                disp(' ');
                                disp('First Derivative: ');
                                disp(first_derivative);
                                disp('Second Derivative: ');
                                disp(second_derivative);
                                disp('Third Derivative: ');
                                disp(third_derivative);
                                disp('Fourth Derivative: ');
                                disp(fourth_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            otherwise
                                error('Invalid Input/Option');

                        end

                        % Forward Finite Difference Ends
                    case 2 % << Backward Finite Difference Option
                        % Enter Backward Finite Difference Code Here
                        % Backward Finite Difference Starts
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        disp('Choose the nth derivative for Backward Difference Method');
                        disp('1. 1st Derivative ');
                        disp('2. 2nd Derivative ');
                        disp('3. 3rd Derivative ');
                        disp('4. 4th Derivative ');
                        disp('5. List All from 1st to 4th ');
                        disp(' ');
                        third_menu = input('Please Enter Number: ');
                        disp(' ');

                        switch third_menu
                            
                            case 1

                                fx = backward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                first_derivative = backward_finite_difference.first_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The First Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(first_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 2

                                fx = backward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the second derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                second_derivative = backward_finite_difference.second_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The Second Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(second_derivative);
                               
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 3

                                fx = backward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the third derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                third_derivative = backward_finite_difference.third_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The Third Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(third_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 4

                                fx = backward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the fourth derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                fourth_derivative = backward_finite_difference.fourth_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The fourth Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(fourth_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 5

                                fx = backward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the derivatives: ');
                                step_size = input('Please enter your desired step size: ');
                                first_derivative = backward_finite_difference.first_derivative(x, fx, step_size);
                                second_derivative = backward_finite_difference.second_derivative(x, fx, step_size);
                                third_derivative = backward_finite_difference.third_derivative(x, fx, step_size);
                                fourth_derivative = backward_finite_difference.fourth_derivative(x, fx, step_size);
                                disp(' ');
                                disp('First Derivative: ');
                                disp(first_derivative);
                                disp('Second Derivative: ');
                                disp(second_derivative);
                                disp('Third Derivative: ');
                                disp(third_derivative);
                                disp('Fourth Derivative: ');
                                disp(fourth_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            otherwise
                                error('Invalid Input/Option');
                        end

                        % Backward Finite Difference Ends
                    case 3 % << Centered Finite Difference Option
                        % Enter Centered Finite Difference Code Here
                        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        disp('Choose the nth derivative for Centered Finited Difference');
                        disp('1. 1st Derivative ');
                        disp('2. 2nd Derivative ');
                        disp('3. 3rd Derivative ');
                        disp('4. 4th Derivative ');
                        disp('5. List All from 1st to 4th ');
                        disp(' ');

                        third_menu = input('Please Enter Number: ');
                        disp(' ');

                        switch third_menu

                            case 1

                                fx = backward_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                first_derivative = backward_finite_difference.first_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The First Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(first_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 2

                                fx = center_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the second derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                second_derivative = center_finite_difference.second_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The Second Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(second_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 3

                                fx = center_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the third derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                third_derivative = center_finite_difference.third_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The Third Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(third_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');


                            case 4

                                fx = center_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the fourth derivative: ');
                                step_size = input('Please enter your desired step size: ');
                                fourth_derivative = center_finite_difference.fourth_derivative(x, fx, step_size);
                                disp(' ');
                                disp('The fourth Derivative for ');
                                disp(fx);
                                disp('At Point ');
                                disp(x);
                                disp('is ');
                                disp(fourth_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            case 5

                                fx = center_finite_difference.function_of_x();
                                x = input('Please enter your desired point you want to find the derivatives: ');
                                step_size = input('Please enter your desired step size: ');
                                first_derivative = center_finite_difference.first_derivative(x, fx, step_size);
                                second_derivative = center_finite_difference.second_derivative(x, fx, step_size);
                                third_derivative = center_finite_difference.third_derivative(x, fx, step_size);
                                fourth_derivative = center_finite_difference.fourth_derivative(x, fx, step_size);
                                disp(' ');
                                disp('First Derivative: ');
                                disp(first_derivative);
                                disp('Second Derivative: ');
                                disp(second_derivative);
                                disp('Third Derivative: ');
                                disp(third_derivative);
                                disp('Fourth Derivative: ');
                                disp(fourth_derivative);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                            otherwise
                                error('Invalid Input/Option');
                        end


                    otherwise %% Numerical Differentiation Otherwise
                        error('Invalid Input/Option');
                end
               %NUMERICAL DIFFERENTIATION ENDS


            case 8 %% << Ordinary Differential Equation Option
                %   Enter Code for ODE here
                %   ODE Starts
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%
                disp('Please enter the number of the desired Numerical method for  ');
                disp('Ordinary Differential Equation. ');
                disp('1. Euler Method');
                disp('2. Runge-Kutta Method');
                disp(' ');
                second_menu = input('Enter the number: ');
                disp(' ');

                switch second_menu

                    case 1 %    << Euler's Method Option
                        %   Enter Euler's Method Code Here
                        %   Euler's Method Starts

                        disp(' Please enter a function in form of dy/dx. ');
                        disp(' ');
                        fx = euler_method.function_of_xy();
                        [x_low x_up ] = euler_method.get_boundary_x();
                        y_init = input('Please enter the initial value of y : ');
                        [y, h] = euler_method.solve_for_de(x_low, x_up, y_init, fx);
                        message = sprintf('The solution at %0.5g < x < %0.5g is y = %0.5g \n with step size of h = %0.5g.', ...
                            x_low, x_up, y, h);

                        disp(message);
                        
                        user_approve = input('Do you want to try again? [y/n]: ', 's');

                    %   Euler's Method Ends

                    case 2 %    << Runge-Kutta Methods
                    %   Enter Runge-Kutta Methods here
                    %   Runge-Kutta Method Starts
                        disp(' ');

                        disp('Choose the desired Runge-Kutta Method of choice');
                        disp('1. Second Order (Heun)');
                        disp('2. Third Order ');
                        disp('3. Fourth Order (Midpoint)');
                        disp('4. Fifth Order (Butchers Method)');
                        disp(' ');
                        third_menu = input('Please Enter Number: ');
                        disp(' ');

                        switch third_menu

                            case 1  %   << 2nd order RK Option
                                %   Enter code for 2nd order RK Here
                                %   2nd order RK Starts
                                disp(' Please enter a function in form of dy/dx. ');
                                disp(' ');
                                fx = runge_kutta.function_of_xy();
                                [x_low x_up ] = runge_kutta.get_boundary_x();
                                y_init = input('Please enter the initial value of y : ');
                                [y, h] = runge_kutta.rk_second_order(x_low, x_up, y_init, fx);
                                message = sprintf('The solution at %0.5g < x < %0.5g is y = %0.5g \n with step size of h = %0.5g.', ...
                                    x_low, x_up, y, h);

                                disp(message);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');
                                %   2nd order RK Ends
                            case 2  %   << 3rd order RK Option
                                %   Enter code for 3rd order RK Here
                                %   3rd order RK starts

                                disp(' Please enter a function in form of dy/dx. ');
                                disp(' ');
                                fx = runge_kutta.function_of_xy();
                                [x_low x_up ] = runge_kutta.get_boundary_x();
                                y_init = input('Please enter the initial value of y : ');
                                [y, h] = runge_kutta.rk_third_order(x_low, x_up, y_init, fx);
                                message = sprintf('The solution at %0.5g < x < %0.5g is y = %0.5g \n with step size of h = %0.5g.', ...
                                    x_low, x_up, y, h);

                                disp(message);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                                %   3rd order RK ends
                            case 3  %   << 4th order RK Option
                                %   Enter code for 4th order RK Here
                                %   4th order RK Starts

                                disp(' Please enter a function in form of dy/dx. ');
                                disp(' ');
                                fx = runge_kutta.function_of_xy();
                                [x_low x_up ] = runge_kutta.get_boundary_x();
                                y_init = input('Please enter the initial value of y : ');
                                [y, h] = runge_kutta.rk_fourth_order(x_low, x_up, y_init, fx);
                                message = sprintf('The solution at %0.5g < x < %0.5g is y = %0.5g \n with step size of h = %0.5g.', ...
                                    x_low, x_up, y, h);

                                disp(message);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                                %   4th order RK Ends
                            case 4  %   << 5th order RK Option
                                %   Enter code for 5th order RK here
                                %   5th order RK starts

                                disp(' Please enter a function in form of dy/dx. ');
                                disp(' ');
                                fx = runge_kutta.function_of_xy();
                                [x_low x_up ] = runge_kutta.get_boundary_x();
                                y_init = input('Please enter the initial value of y : ');
                                [y, h] = runge_kutta.rk_fifth_order(x_low, x_up, y_init, fx);
                                message = sprintf('The solution at %0.5g < x < %0.5g is y = %0.5g \n with step size of h = %0.5g.', ...
                                    x_low, x_up, y, h);

                                disp(message);
                                
                                user_approve = input('Do you want to try again? [y/n]: ', 's');

                                %   5th order RK ends
                            otherwise
                               error('Invalid Input/Option'); 
                        end
                    %

                    otherwise
                        error('Invalid Input/Option');

                end


                %   ODE Ends

            otherwise %% FIRST MENU OTHER WISE
                error('Invalid Input/Option');

        end

    
end
