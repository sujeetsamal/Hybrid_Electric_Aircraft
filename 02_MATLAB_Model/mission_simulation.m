% ============================================================
% Hybrid Electric Aircraft Mission Simulation
% ============================================================

clear; clc; close all;

% Load parameters
run('parameters.m');

%% Time Settings
dt = 1;                  
t_end = 1800;            
t = 0:dt:t_end;

%% Preallocate Arrays
V = zeros(size(t));      
SOC = zeros(size(t));    
P_engine = zeros(size(t));
P_motor  = zeros(size(t));
P_shaft  = zeros(size(t));
Drag     = zeros(size(t));
Thrust   = zeros(size(t));

SOC(1) = 1;   

%% Simulation Loop
for i = 1:length(t)-1
    
    % Mission Phase Logic
    if t(i) <= 60
        P_engine(i) = P_engine_max;
        P_motor(i)  = P_motor_max;
        
    elseif t(i) <= 300
        P_engine(i) = P_engine_max * 0.9;
        P_motor(i)  = P_motor_max * 0.2;
        
    else
        P_engine(i) = P_engine_max * 0.8;
        P_motor(i)  = 0;
    end
    
    % Total shaft power
    P_shaft(i) = P_engine(i) + P_motor(i);
    
    % ---------- CORRECTED THRUST MODEL ----------
    if V(i) < 20
        V_effective = 20;   % avoid unrealistic static thrust
    else
        V_effective = V(i);
    end

    Thrust(i) = (P_shaft(i) * eta_prop) / V_effective;
    % --------------------------------------------
    
    % Drag
    Drag(i) = 0.5 * rho * V(i)^2 * S * Cd;
    
    % Acceleration
    a = (Thrust(i) - Drag(i)) / m;
    
    % Update velocity
    V(i+1) = V(i) + a * dt;
    
    % Update SOC
    SOC(i+1) = SOC(i) - (P_motor(i) * dt) / E_battery;
    
    if SOC(i+1) < 0
        SOC(i+1) = 0;
    end
end

%% Store Results
results.time     = t;
results.speed    = V;
results.SOC      = SOC;
results.P_engine = P_engine;
results.P_motor  = P_motor;
results.P_shaft  = P_shaft;

save('simulation_results.mat','results');

%% Create Single Summary Figure

figure;

subplot(3,2,1)
plot(t, P_shaft/1000,'LineWidth',2);
xlabel('Time (s)');
ylabel('kW');
title('Shaft Power');
grid on;

subplot(3,2,2)
plot(t, P_engine/1000,'LineWidth',2);
xlabel('Time (s)');
ylabel('kW');
title('Engine Power');
grid on;

subplot(3,2,3)
plot(t, P_motor/1000,'LineWidth',2);
xlabel('Time (s)');
ylabel('kW');
title('Motor Power');
grid on;

subplot(3,2,4)
plot(t, SOC*100,'LineWidth',2);
xlabel('Time (s)');
ylabel('%');
title('Battery SOC');
grid on;

subplot(3,2,5)
plot(t, V,'LineWidth',2);
xlabel('Time (s)');
ylabel('m/s');
title('Aircraft Speed');
grid on;

savefig('results_plots.fig');