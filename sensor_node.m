classdef sensor_node < handle
   properties
      battery_level = 0;
      x;
      y;
      transmission_range;
   end
   methods
      %constructor
      function obj = sensor_node(initial_battery,x,y,transmission_range)
         obj.battery_level = initial_battery;
         obj.x = x;
         obj.y = y;
         obj.transmission_range = transmission_range;
      end
      
      %set battery level
      function obj = decrease_battery(obj, energy)
         obj.battery_level = obj.battery_level - energy;
      end
   end
end