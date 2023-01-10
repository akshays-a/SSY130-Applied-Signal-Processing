%NO_PFILE
function [funs, student_id] = student_sols()
%STUDENT_SOLS Contains all student solutions to problems.

% ----------------------------------------
%               STEP 1
% ----------------------------------------
% Set to your birthdate / the birthdate of one member in the group.
% Should a numeric value of format YYYYMMDD, e.g.
% student_id = 19900101;
% This value must be correct in order to generate a valid secret key.
student_id = 19950803;


% ----------------------------------------
%               STEP 2
% ----------------------------------------
% Your task is to implement the following skeleton functions.
% You are free to use any of the utility functions located in the same
% directory as this file as well as any of the standard matlab functions.

    function h = gen_filter()
        %TODO: This line is missing some code!
        f=[0 0.05 0.1 0.5]./0.5;
        a = [0 1 0 0]*(2*pi*0.05); % Amplitude
        h = firpm(60,f,a,"differentiator");
        [b,W] = freqz(h,1,512);
        figure(6)
        plot(f,a,W/pi,abs(b))
        legend('Ideal','firpm Design')
        xlabel 'Normalized frequency', ylabel 'magnitude'
    end

funs.gen_filter = @gen_filter;

    function h_e=gen_Euler_filter()
        dt=1;
        h_e =[1/dt -1/dt];
    end
funs.gen_Euler_filter = @gen_Euler_filter;

% This file will return a structure with handles to the functions you have
% implemented. You can call them if you wish, for example:
% funs = student_sols();
% some_output = funs.some_function(some_input);

end


