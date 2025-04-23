function [estimated_speed] = PulseHybridMethod(t,pulses, pulsesPerRevolution, time_interval)
    estimated_speed = zeros([length(t) 1]);

    %% ToDo
    for idx = 1:length(t)
       
        estimated_speed(idx) = 0;
    end
end



%%
% function [estimated_speed] = PulseHybridMethod(t,pulses, pulsesPerRevolution, time_interval)
%     estimated_speed = zeros([length(t) 1]);
%     speed_coeff = 2 * pi / pulsesPerRevolution;
%     pulses_per_interval = 0;
%     prev_state = 0;
%     prev_speed = 0;
%     time_stamp = 0.0;
%     time_total = 0.0;
% 
%     %% ToDo
%     for idx = 1:length(t)
%         time_checker = t(idx) - time_stamp;
% 
%         if time_checker < time_interval
%             if pulses(idx) - prev_state > 0
%                 pulses_per_interval = pulses_per_interval + 1;
%                 if pulses_per_interval == 1
%                     time_stamp = t(idx);
%                 end
%                 prev_state = pulses(idx);
%             else
%                 prev_state = pulses(idx);
%             end
%             estimated_speed(idx) = prev_speed;
% 
%         else
%             if pulses(idx) - prev_state > 0
%                 time_total = t(idx) - time_stamp;
%                 estimated_speed(idx) = speed_coeff * pulses_per_interval / time_total;
%                 pulses_per_interval = 1;
%                 time_stamp = t(idx);
%                 prev_speed = estimated_speed(idx);
%                 prev_state = pulses(idx);
%             else
%                 estimated_speed(idx) = prev_speed;
%                 prev_state = pulses(idx);
%             end
% 
%         end
% 
% 
%         % estimated_speed(idx) = 0;
%     end
% end
% 
