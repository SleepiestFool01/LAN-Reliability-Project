%% Function runCompoundNetworkSim 
% Parameters:
%  K - the number of packets in the application message
%  p - the probability of failure on a single link
%  N - the number of simulations to run
%
% Returns:
%  result - the average total number of transmission attempts required to deliver all K packets through the compound network.

function result = runCompoundNetworkSim(K, p, N);

    simResults = zeros(1,N);

    for i=1:N
        txAttemptCount = 0;
        pktSuccesCount = 0;

        while pktSuccesCount < K
            hasSucceeded = false;
           %loop through single series link 
            while ~hasSucceeded
                r1 = rand;
                txAttemptCount = txAttemptCount + 1;
                
                if r1 < p
                    continue;
                end
                
                delivered = false;
                %Loop I made for the ParallelSeries Link
                while ~delivered
                    
                    r3 = rand;%
                    r4 = rand;%
                    txAttemptCount = txAttemptCount + 1;

                    if(r3 >= p || r4 >= p) %checkes if either random number is greater than prob of failure if either of them do then Packet Transfer was a success 
                        delivered = true;
                        hasSucceeded = true;
                    end

                end
            end
            pktSuccesCount = pktSuccesCount + 1;
        end
        simResults(i) = txAttemptCount;
    end
    result = mean(simResults);
end