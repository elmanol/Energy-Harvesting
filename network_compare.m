%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% EH nodes addition to WSN  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Initialize system  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%get the simulation parameters for network 1 from parameters1.m file
parameters0;


%create first network
net1 = network_init(x_1,y_1);
net1.set_sink(sink_x_1, sink_y_1);

%create second network
net2 = network_init(x_1,y_1);
net2.set_sink(sink_x_1, sink_y_1);

%setup 
for i=1:number_of_sensors_1
    node_1(i) = sensor_node(en, net1, i, transmission_range); 
end

for i=1:number_of_sensors_2
    node_2(i) = sensor_node(en, net2, i, transmission_range); 
end