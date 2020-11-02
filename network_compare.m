%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% EH nodes addition to WSN  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Initialize system  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

number_of_networks = 2;

%get the simulation parameters for network 1 from parameters1.m file
parameters0;

%create first network
net1 = network_init(P(1).('x'), P(1).('y'), P(1).('sink_x'), P(1).('sink_y'));

%create second network
net2 = network_init(P(1).('x'), P(1).('y'), P(1).('sink_x'), P(1).('sink_y'));

%create energy objects
en1 = energy(GP.('initial_battery'), GP.('message_reception_cost'), GP.('message_transmission_cost'), P(1).('irradiance_type'), GP.('execution_time'));
en2 = energy(GP.('initial_battery'), GP.('message_reception_cost'), GP.('message_transmission_cost'), P(2).('irradiance_type'), GP.('execution_time'));

%setup 
for i=1:P(1).('number_of_sensors')
    node1(i) = sensor_node(en1, net1, i, GP.('transmission_range')); 
end

for i=1:P(2).('number_of_sensors')
    node2(i) = sensor_node(en2, net2, i, GP.('transmission_range')); 
end

for i=1:number_of_networks
   routing(net1, node1, en1);
   routing(net2, node2, en2);
end
