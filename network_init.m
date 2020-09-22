classdef network_init < handle
   %class containing all the variables and methods needed for the network
    properties
        %set sensors coordinates
        x;
        y;
        sink = randi([1,10],1);
    end
    
    methods
        function obj = network_init(x,y)
            %constructor
            obj.x = x;
            obj.y = y;
        end
        
    end
end

