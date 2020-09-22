classdef sensor_node < handle
   %class containing all the variables and methods needed for the sensors nodes 
   properties
      battery_level = 0;
      x;
      y;
      transmission_range;
      neighbours;
      current_messages;
   end
   methods
      %constructor
      function obj = sensor_node(initial_battery,x,y,i,transmission_range)
         obj.battery_level = initial_battery;
         obj.x = x(i);
         obj.y = y(i);
         obj.transmission_range = transmission_range;
         neighbour_finder(obj,x,y,i);
      end
      
      %find neighbours
      function obj = neighbour_finder(obj,x,y,i)
           for j=1:length(x)
                if (norm([x(j) y(j)] - [x(i) y(i)])< obj.transmission_range) && (i~=j)
                   obj.neighbours = [obj.neighbours j];
                end
           end
      end
      
      %set battery level
      function obj = decrease_battery(obj, energy)
         obj.battery_level = obj.battery_level - energy;
      end
     
      %receive message
      function obj = receive_message(obj,message, message_reception_cost)
         obj.current_messages = [obj.current_messages message];
         decrease_battery(obj, message_reception_cost);
      end
      
      %send message
      function obj = send_message(obj, receiver, message,...
              message_transmission_cost, message_reception_cost)
          
          obj.current_messages = obj.current_messages(1:end-1);
          decrease_battery(obj, message_transmission_cost);
          receive_message(receiver,message, message_reception_cost);
          
      end
   end
end