% ============================================================
% Aircraft & Hybrid System Parameters
% ============================================================

%% Aircraft Physical Parameters
m = 1200;                % Mass (kg)
S = 11;                  % Wing area (m^2)
Cd = 0.045;              % Drag coefficient
rho = 1.225;             % Air density (kg/m^3)
eta_prop = 0.85;         % Propeller efficiency

%% Power System Parameters
P_engine_max = 140e3;    % Engine max power (W)
P_motor_max  = 60e3;     % Motor max power (W)

battery_kWh = 20;         
E_battery   = battery_kWh * 3.6e6;  % Convert kWh to Joules

eta_engine = 0.30;
eta_motor  = 0.95;
