
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Understanding the statistic of the gridworld problem%%%%
%%%%                  Arsham Mostaani                   %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
close all
clc


%% Initialization of control parameters
gamma = 0.9; % the discount factor
max_rew = 10; % the reward that can be attained if the task is accomplished
min_rew = 1; % the reward that is obtained if no communication is in place

%calculating joint probabilities for w^t = 22:
%prob dict:
prob_dict = [1, 4; 2, 7; 3, 8; 4, 8; 5, 9; 6, 9; 7, 7; 8, 5; 9, 3; 10, 2; 11, 1];
prob_dict(:,2) = prob_dict(:,2)/63;
expected_rew_analytic = 0;
expected_rew_analytic_conditional = zeros(length(prob_dict),length(prob_dict));

for j = 1: length(prob_dict)
    for k = 1: length(prob_dict)
        expected_rew_analytic =                  prob_dict(j,2) * prob_dict(k,2) * gamma^max(j,k) * max_rew + expected_rew_analytic;
        expected_rew_analytic_conditional(j,k) = prob_dict(j,2) * prob_dict(k,2) * gamma^max(j,k) * max_rew;    
    end
end





