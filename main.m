
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Initialize sensors %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%get the simulation parameters from parameters.m file
parameters;

%create the network
network = network_init(x,y);

disp(network.sink)

%create empty sensors vector
node = sensor_node.empty;

%create a sensor_node type object for each sensor
for i=1:number_of_sensors
    node(i) = sensor_node(initial_battery, network.x, network.y, i, transmission_range); 
end
%decrease_battery(node(i), 1);
send_message(node(i), node(i-1), "123", message_reception_cost, message_reception_cost);

%figure of the nodes positions
%f1 = figure;
%plot(x,y,"*");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%main loop
for i=1:3600
    
end
