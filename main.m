
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Initialize sensors %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%get the simulation parameters from parameters.m file
parameters;

%create empty sensors vector
node = sensor_node.empty;

%create a sensor_node type object for each sensor
for i=1:number_of_sensors
    node(i) = sensor_node(initial_battery, x, y, i, transmission_range); 
end
%decrease_battery(node(i), 1);

%figure of the nodes positions
%f1 = figure;
%plot(x,y,"*");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%main loop
for i=1:3600
    
end
