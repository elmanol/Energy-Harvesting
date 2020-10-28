%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Routing in EH-WSN  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Initialize system  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%get the simulation parameters from parameters.m file
parameters;

%create the network
network = network_init(x,y);
network.set_sink(sink_x, sink_y);

%create energy object
en = energy(initial_battery, message_reception_cost, message_transmission_cost, irradiance_type, execution_time);

%create empty sensors vector
node = sensor_node.empty;


%create a sensor_node type object for each sensor
for i=1:number_of_sensors
    
    node(1:number_of_sensors) = sensor_node(initial_battery, network.x, network.y, i, transmission_range); 
    node(i) = sensor_node(en, network, i, transmission_range); 
    
end


%adjust_battery(node(i), 1);
send_message(node(i), node(i-1), "123", en);


%figure of the nodes positions
%f1 = figure;
%plot(x,y,"*");
irradiance_vector = irradiance_function(irradiance_type, execution_time);

f1 = figure;
plot(x,y,"*");
en.setIrradiance(irradiance_type, execution_time) 
en.irradiance_vector = irradiance_function(irradiance_type, execution_time);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Main Loop  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:timestep:execution_time
	
end
