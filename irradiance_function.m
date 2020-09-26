function irradiance_vector = irradiance_function(type, execution_time)
%returns the irradiance for every time instance

    if type == "normal"
        mu = 0;
        sigma = 1;
        irradiance_vector = abs(normrnd(mu,sigma,1,execution_time));
    end

end

