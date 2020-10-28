classdef network_init < handle
   %class containing all the variables and methods needed for the network
    properties
        x;
        y;
        sink_x;
        sink_y;
    end
    
    methods
        function obj = network_init(x,y)
            %constructor
            obj.x = x;
            obj.y = y;
        end
        
        function obj = set_sink(obj, sink_x, sink_y)
            obj.sink_x = sink_x;
            obj.sink_y = sink_y;
        end
    end
end

