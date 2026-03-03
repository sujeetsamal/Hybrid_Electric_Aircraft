% ============================================================
% Hybrid Aircraft Efficiency & Performance Summary
% ============================================================

clear; clc;

run('parameters.m');
load('simulation_results.mat');

V   = results.speed;
SOC = results.SOC;
t   = results.time;
P_engine = results.P_engine;
P_motor  = results.P_motor;

fprintf('\n========== PERFORMANCE SUMMARY ==========\n');

fprintf('Final Cruise Speed: %.2f m/s (%.2f km/h)\n', ...
        V(end), V(end)*3.6);

fprintf('Final Battery SOC: %.2f %%\n', SOC(end)*100);

fprintf('Mission Duration: %.2f minutes\n', ...
        t(end)/60);

battery_used = (1 - SOC(end)) * battery_kWh;
fprintf('Battery Energy Used: %.2f kWh\n', battery_used);

% Engine Energy Estimate
engine_energy = sum(P_engine) * 1 / 3.6e6;
fprintf('Engine Energy Output: %.2f kWh\n', engine_energy);

fprintf('=========================================\n');