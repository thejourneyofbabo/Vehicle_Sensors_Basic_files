function [estimated_speed] = PulseTimingMethod(t, pulses, pulsesPerRevolution)
    estimated_speed = zeros([length(t) 1]);
    
    %% ToDo
    for idx = 1:length(t)
        
        estimated_speed(idx) = 0;
        
    end
end










% function [estimated_speed] = PulseTimingMethod(t, pulses, pulsesPerRevolution)
%     estimated_speed = zeros([length(t) 1]);
%     time_flag = 0.0;
%     time_between_pulse = 0.0;
%     speed_coef = 2 * pi / pulsesPerRevolution;
%     prev_state = 0;
%     pulse_count = 0;
%     prev_speed = 0.0;
% 
%     %% ToDo
%     for idx = 1:length(t)
%         if pulses(idx) - prev_state > 0
%             if pulse_count > 1
%                 pulse_count = pulse_count + 1;
%                 time_between_pulse = t(idx) - time_flag;
%                 time_flag = t(idx);
%             else
%                 pulse_count = pulse_count + 1;
%                 time_flag = t(idx);
%             end
%             estimated_speed(idx) = speed_coef / time_between_pulse;
%             prev_speed = estimated_speed(idx);
%             prev_state = pulses(idx);
%         else
%             prev_state = pulses(idx);
%             estimated_speed(idx) = prev_speed;
%         end
% 
%         % estimated_speed(idx) = 0;
% 
%     end
% end
% 
