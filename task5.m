%% Task 5 driver
% generates Figures 1-6 from the assignment table
% NOTE: depends on runCustomCompoundNetworkSim()

K = [1 5 10];          % K values listed in the table
N = 1000;                  % number of sims to average
p = 0.01:0.01:0.99;   % 1% to 99% sweep


%% FIGURE 1
% p1 = 10%, p2 = 60%, p3 = 1%-99%
simResultsFig1 = zeros(length(K), length(p)); % rows=K, cols=p

for kk = 1:length(K)
    for pp = 1:length(p)
        p1 = 0.10;
        p2 = 0.60;
        p3 = p(pp); % sweep 1%-99%
        simResultsFig1(kk,pp) = runCustomCompoundNetworkSim(K(kk), p1, p2, p3, N);
    end
end



figure;
hold on;
for kk = 1:length(K)
    semilogy(p, simResultsFig1(kk,:), 'o');
end
hold off;
title('Figure 1');
xlabel('Packet Failure Probability');
ylabel('Total Transmissions Needed');
legend('K = 1','K = 5','K = 10','Location','northwest');
grid on;


%% FIGURE 2
% p1 = 60%, p2 = 10%, p3 = 1%-99%
simResultsFig2 = zeros(length(K), length(p));

for kk = 1:length(K)
    for pp = 1:length(p)
        p1 = 0.60;
        p2 = 0.10;
        p3 = p(pp); % sweep 1%-99%
        simResultsFig2(kk,pp) = runCustomCompoundNetworkSim(K(kk), p1, p2, p3, N);
    end
end

figure;
hold on;
for kk = 1:length(K)
    semilogy(p, simResultsFig2(kk,:), 'o');
end
hold off;
title('Figure 2');
xlabel('Packet Failure Probability');
ylabel('Total Transmissions Needed');
legend('K = 1','K = 5','K = 10','Location','northwest');
grid on;


%% FIGURE 3
% p1 = 10%, p2 = 1%-99%, p3 = 60%
simResultsFig3 = zeros(length(K), length(p));

for kk = 1:length(K)
    for pp = 1:length(p)
        p1 = 0.10;
        p2 = p(pp); % sweep 1%-99%
        p3 = 0.60;
        simResultsFig3(kk,pp) = runCustomCompoundNetworkSim(K(kk), p1, p2, p3, N);
    end
end

figure;
hold on;
for kk = 1:length(K)
    semilogy(p, simResultsFig3(kk,:), 'o');
end
hold off;
title('Figure 3');
xlabel('Packet Failure Probability');
ylabel('Total Transmissions Needed');
legend('K = 1','K = 5','K = 10','Location','northwest');
grid on;


%% FIGURE 4
% p1 = 60%, p2 = 1%-99%, p3 = 10%
simResultsFig4 = zeros(length(K), length(p));

for kk = 1:length(K)
    for pp = 1:length(p)
        p1 = 0.60;
        p2 = p(pp); % sweep 1%-99%
        p3 = 0.10;
        simResultsFig4(kk,pp) = runCustomCompoundNetworkSim(K(kk), p1, p2, p3, N);
    end
end

figure;
hold on;
for kk = 1:length(K)
    semilogy(p, simResultsFig4(kk,:), 'o');
end
hold off;
title('Figure 4');
xlabel('Packet Failure Probability');
ylabel('Total Transmissions Needed');
legend('K = 1','K = 5','K = 10','Location','northwest');
grid on;


%% FIGURE 5
% p1 = 1%-99%, p2 = 10%, p3 = 60%
simResultsFig5 = zeros(length(K), length(p));

for kk = 1:length(K)
    for pp = 1:length(p)
        p1 = p(pp); % sweep 1%-99%
        p2 = 0.10;
        p3 = 0.60;
        simResultsFig5(kk,pp) = runCustomCompoundNetworkSim(K(kk), p1, p2, p3, N);
    end
end

figure;
hold on;
for kk = 1:length(K)
    semilogy(p, simResultsFig5(kk,:), 'o');
end
hold off;
title('Figure 5');
xlabel('Packet Failure Probability');
ylabel('Total Transmissions Needed');
legend('K = 1','K = 5','K = 10','Location','northwest');
grid on;


%% FIGURE 6
% p1 = 1%-99%, p2 = 60%, p3 = 10%
simResultsFig6 = zeros(length(K), length(p));

for kk = 1:length(K)
    for pp = 1:length(p)
        p1 = p(pp); % sweep this one
        p2 = 0.60;
        p3 = 0.10;
        simResultsFig6(kk,pp) = runCustomCompoundNetworkSim(K(kk), p1, p2, p3, N);
    end
end

figure;
hold on;
for kk = 1:length(K)
    semilogy(p, simResultsFig6(kk,:), 'o');
end
hold off;
title('Figure 6');
xlabel('Packet Failure Probability');
ylabel('Total Transmissions Needed');
legend('K = 1','K = 5','K = 10','Location','northwest');
grid on;
