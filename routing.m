function [] = routing(network, nodes, energy)
    
    parameters0;
    for timestemp = 1:GP.('simulation_time') 
        
        generate_send_or_propagate(nodes,energy,network);
        
    end
    
end

function [] = generate_send_or_propagate(nodes, energy, network)
    parameters0;
    
    %for every node, generate new events, or propagate
    for i = 1:length(nodes)
       
        current_node = nodes(i);
        
        %if current node is the sink, don't do anything, just continue
        if current_node.x == network.sink_x && current_node.y == network.sink_y
            continue;
        end
        
        %get current node neighbours
        node_neighbours = current_node.neighbours;
        
        %with probability of event_rate, generate a new event for the 
        %current sensor node
        if (rand < GP.('event_rate'))
            current_node.generate_event("message");
            
            for j = 1:length(node_neighbours)

                neighbour = nodes(node_neighbours(j));
                
                if (neighbour.distance_to_sink < current_node.distance_to_sink)
                    current_node.modify_events_sent([neighbour.x neighbour.y]);
                    current_node.send_message(neighbour, "message", energy);
                
                end
                
            end
        %if the current node has buffered messages
        elseif (~isempty(current_node.current_messages))    
           
            for j = 1:length(node_neighbours)

                neighbour = nodes(node_neighbours(j));
                %if current node is in the radius of the sink, then it should
                %only propagate to the sink 
                if (current_node.distance_to_sink < GP.('transmission_range'))
                    
                    current_node.send_message(nodes(end), "message", energy);
                    current_node.modify_messages_sent();
                    break;
                    
                %send a message to every neighbour if they are closer to
                %the sink than the current node
                elseif (neighbour.distance_to_sink < current_node.distance_to_sink)
                    
                    current_node.send_message(neighbour, "message", energy);
                    current_node.modify_messages_sent();
                
                end

            end
            
        end
        
    end
    
end
