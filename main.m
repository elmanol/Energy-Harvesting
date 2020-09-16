
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Initialize sensors %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%get the simulation parameters from parameters.m file
parameters;

%create empty sensors vector
sensors = sensor_node.empty;

%create a sensor_node type object for each sensor
for i=1:number_of_sensors
    sensors(i) = sensor_node(initial_battery, x(i), y(i), transmission_range); 
end
decrease_battery(sensors(i), 1);

%figure of the sensors positions
f1 = figure;
plot(x,y,"*");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%main loop
for i=1:3600
    
end
