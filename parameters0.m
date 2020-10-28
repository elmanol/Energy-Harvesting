%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Network 1 parameters  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%field dimensions
length_1 = 500;
height_1 = 500;

%number of sensors
number_of_sensors_1 = 10;

%set sensors coordinates
x_1 = [2, 4, 5, 7, 8, 3, 5, 7, 8, 9];
y_1 = [3, 4, 9, 2, 1, 6, 5, 7, 8, 9];

%energy harvesting nodes
%randomly
eh_sensors = randi([0 1],[1 number_of_sensors]);
%specifically
eh_sensors = [1 0 0 0 1 0 0 0 0 1];

%sink position
sink_x_1 = 10;
sink_y_1 = 10;

%irradiance type
irradiance_type_1 = "normal"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Network 2 parameters  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%field dimensions
length_2 = 500;
height_2 = 500;

%number of sensors
number_of_sensors_2 = 10;

%set sensors coordinates
x_2 = [2, 4, 5, 7, 8, 3, 5, 7, 8, 9];
y_2 = [3, 4, 9, 2, 1, 6, 5, 7, 8, 9];

%sink position
sink_x_2 = 10;
sink_y_2 = 10;

%irradiance type
irradiance_type_2 = "normal"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%% Sysytem parameters  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initial battery
initial_battery = 100;

%transmission range
transmission_range = 2;

%message transmission cost
message_transmission_cost = 1;%10*10^-6;

%message reception cost
message_reception_cost = 1;%10*10^-6;

%Packet size in bytes
packet_size = 512;

%transmit_rate in bytes per second
transmit_rate = 250000;

%events/sec
event_rate = 0.025;

%message transmit time
transmit_time = packet_size/transmit_rate;

%execution time steps
execution_time = 3600;

%time step
timestep = 1;

