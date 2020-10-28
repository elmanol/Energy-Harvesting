classdef energy
    %class for everything that has to do with energy
    
    properties
        initial_battery;
        message_reception_cost;
        message_transmission_cost;
        irradiance_vector;
    end
    
    methods
        function obj = energy(initial_battery, message_reception_cost, message_transmission_cost, irradiance_type, execution_time)
            %constructor
            obj.initial_battery = initial_battery;
            obj.message_reception_cost = message_reception_cost;
            obj.message_transmission_cost = message_transmission_cost;
            setIrradiance(obj, irradiance_type, execution_time);
        end
        
        function obj = setIrradiance(obj,irradiance_type, execution_time)            
            if irradiance_type == "normal"
                mu = 0;
                sigma = 1;
                obj.irradiance_vector = abs(normrnd(mu,sigma,1,execution_time));
            end
        end
    end
end

