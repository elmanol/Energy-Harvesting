classdef sensor_node < handle
   %class containing all the variables and methods needed for the sensors nodes 
   properties
      battery_level = 0;
      x;
      y;
      transmission_range;
      neighbours;
      current_messages;
      distance_to_sink;
   end
   methods
      %constructor
      function obj = sensor_node(en, network, i, transmission_range)
         obj.battery_level = en.initial_battery;
         obj.x = network.x(i);
         obj.y = network.y(i);
         obj.transmission_range = transmission_range;
         obj.distance_to_sink = norm([network.sink_x network.sink_y]-...
         [network.x(i) network.x(i)]);
         neighbour_finder(obj, network.x, network.y, i);
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
      function obj = adjust_battery(obj, energy)
         obj.battery_level = obj.battery_level + energy;
      end
     
      %receive message
      function obj = receive_message(obj,message, message_reception_cost)
         obj.current_messages = [obj.current_messages message];
         adjust_battery(obj, -message_reception_cost);
      end
      
      %send message
      function obj = send_message(obj, receiver, message, en)
          
          obj.current_messages = obj.current_messages(1:end-1);
          adjust_battery(obj, -en.message_transmission_cost);
          receive_message(receiver,message, en.message_reception_cost);
          
      end
   end
end