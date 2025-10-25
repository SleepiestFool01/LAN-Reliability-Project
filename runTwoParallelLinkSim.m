%% Funtion runTwoParallelLinkSim()
% Spray a packet over the network if one makes it then packet = success 
% Parameters
%  K - the number of packets in the application message
%  p - the probability of failure 
%  N - the number of simulations to run
%
% Returns: the average numeric result across the total simulations
function result = runTwoParallelLinkSim(K,p,N)

    simResults = ones(1,N); % a place to store the result of each simulation
    
    for i=1:N % loops 1000 times
        txAttemptCount = 0; % transmission count
        pktSuccessCount = 0; % number of packets that have made it across
    
        while pktSuccessCount < K % Loops as many times as the K passed into the function 
            hasSucceeded = false;
            
            while ~hasSucceeded 
                r1 = rand; % generate random number to determine if packet is successful (r > p)
                r2 = rand; 
                txAttemptCount = txAttemptCount + 1; % count 1st attempt
            
                % if either r1 or r2 is 
                if (r1 >= p || r2 >= p)
                    hasSucceeded = true;

                end
           
            end

            pktSuccessCount = pktSuccessCount + 1; % increase success count after success (r > p)
        end
    
        simResults(i) = txAttemptCount; % record total number of attempted transmissions before entire application message (K successful packets) transmitted
    end

    result = mean(simResults);
end



