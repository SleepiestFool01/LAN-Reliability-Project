%% Simulation driver
% Parameters
%  K - list of packet counts in the application message
%  p - list of failure probabilities
%  N - number of simulations to run for averaging

K = [1 5 15 50 100]; % add 1000 
p = 0.01:0.01:0.99; % vector with range of probabilities from 0 to 1 non-inclusive
N = 1000; % Num 0f Sims 

simResultsMatrix = zeros(length(K), length(p)); %Allocates teh correct amount of memory for the results matrix 
theoryMatrix = zeros(length(K), length(p)); %Allocates the Correct amount of memory for then theorized output 


%Loops through K & P for indexes 
%stroes the value delivered from the function into a results % Theory matrix in
%order to easily graph it.
for m=1:length(K) 
    for n=1:length(p)
    simResultsMatrix(m,n) = runSingleLinkSim(K(m), p(n), N);
    theoryMatrix(m,n) = K(m) / (1 - p(n));
    end 
end

for R=1:length(K)
    figure;
    semilogy(p, simResultsMatrix(R,:), 'o', 'DisplayName', 'Simulation'); hold on;
    semilogy(p, theoryMatrix(R,:), '-', 'DisplayName', 'Theory');
    hold off;
    
    title("Single Link, K = " + K(R));% Displays Single Link, K = 1|5|15|50|100|1000
    %lanbel X & Y Axis 
    xlabel("Packet loss probability p");
    ylabel("Total transmissions needed");
    %I don't understand this part I followed some documentation 
    legend("Location","northwest");
    grid on;
end



figure;
hold on;
for M = 1:length(K)
    semilogy(p, simResultsMatrix(M,:), 'o', ...
    'DisplayName', "Sim K=" + K(M));
    semilogy(p, theoryMatrix(M,:), '-', ...
    'DisplayName', "Theory K=" + K(M));
end
hold off;

title("Single Link: All K Values");
xlabel("Packet loss probability p");
ylabel("Total transmissions needed");
legend("Location","northwest");
grid on;
set(gca, 'YScale', 'log'); %This line alone probably took the most to figure out XD
