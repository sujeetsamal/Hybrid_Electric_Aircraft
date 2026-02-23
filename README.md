# ✈️ Hybrid Electric Aircraft Concept

![MATLAB](https://img.shields.io/badge/MATLAB-R2023b-orange)
![Simulink](https://img.shields.io/badge/Simulink-Dynamic_Model-blue)
![Fusion360](https://img.shields.io/badge/CAD-Fusion360-red)
![Status](https://img.shields.io/badge/Project-Active-success)

A system-level hybrid-electric aircraft modeling project integrating propulsion simulation, nonlinear flight dynamics, CAD modeling, and structural validation.

---

# Hybrid_Electric_Aircraft
Hybrid Electric Aircraft Concept is a system-level aerospace project modeling a parallel hybrid propulsion aircraft. It integrates MATLAB power analysis, Simulink nonlinear flight dynamics, Fusion 360 CAD design, and structural validation. The model includes thrust–drag equilibrium and hybrid power blending to simulate realistic cruise performance.


## 📌 Project Overview

This project presents a simplified longitudinal flight model of a hybrid-electric aircraft including:

- Hybrid propulsion architecture (IC engine + electric motor)
- Power blending strategy
- Nonlinear propeller thrust model
- Aerodynamic drag modeling
- Aircraft longitudinal dynamics simulation
- Structural verification of critical components
- CAD conceptual aircraft design

The objective is to demonstrate system-level integration of hybrid propulsion with aircraft dynamics.

---

# 🧠 System Architecture

## Hybrid Propulsion Block Diagram

<p align="center">
  <img src="docs/images/hybrid_architecture.png" width="700">
</p>

The hybrid propulsion system integrates:

- Internal Combustion Engine  
- Electric Motor Assist  
- Shared Shaft Power System  
- Propeller Thrust Conversion  
- Aerodynamic Drag Model  
- Longitudinal Flight Dynamics  

---

# 🔬 Governing Equations

### Thrust Model

\[
T = \frac{P}{V + \varepsilon}
\]

### Aerodynamic Drag

\[
D = \frac{1}{2} \rho S C_d V^2
\]

### Longitudinal Dynamics

\[
a = \frac{T - D}{m}
\]

Where:

- \(P\) = Shaft Power  
- \(V\) = Aircraft Velocity  
- \(ρ\) = Air Density  
- \(S\) = Wing Area  
- \(C_d\) = Drag Coefficient  
- \(m\) = Aircraft Mass  

---

# 📈 Simulation Results

## Velocity Response (With Drag Model)

<p align="center">
  <img src="docs/images/velocity_response.png" width="700">
</p>

✔ Initial acceleration  
✔ Transient overshoot  
✔ Drag stabilization  
✔ Steady cruise equilibrium  

The simulation demonstrates thrust-drag equilibrium and nonlinear dynamic response.

---

# 🛠 Structural Analysis

## Motor Mount Stress

<p align="center">
  <img src="docs/images/motor_mount_stress.png" width="600">
</p>

## Wing Root Stress

<p align="center">
  <img src="docs/images/wing_root_stress.png" width="600">
</p>

Full structural report available in:

```
05_Structural_Check/stress_report.pdf
```

---

# 📂 Project Structure

```
Hybrid_Electric_Aircraft_Concept/
│
├── 01_System_Definition/
│   ├── Project_Objective.pdf
│   ├── Hybrid_Architecture_Block_Diagram.png
│   └── Mission_Profile.png
│
├── 02_MATLAB_Model/
│   ├── parameters.m
│   ├── mission_simulation.m
│   ├── efficiency_analysis.m
│   └── results_plots.fig
│
├── 03_Simulink_Model/
│   ├── hybrid_aircraft.slx
│   ├── Power_System_Subsystem.slx
│   ├── Aircraft_Dynamics_Subsystem.slx
│   └── Controller_Subsystem.slx
│
├── 04_CAD_Model_Fusion360/
│   ├── aircraft_body.f3d
│   ├── hybrid_engine_mount.f3d
│   ├── battery_pack_layout.f3d
│   └── propeller_assembly.f3d
│
├── 05_Structural_Check/
│   ├── motor_mount_stress.png
│   ├── wing_root_stress.png
│   └── stress_report.pdf
│
└── docs/images/
```

---

# 🔬 MATLAB Model

The MATLAB simulation performs:

- Power distribution modeling  
- Mission energy estimation  
- Efficiency analysis  
- Results visualization  

### To Run:

```matlab
run('parameters.m')
run('mission_simulation.m')
```

---

# 🔧 Simulink Model

The Simulink implementation includes:

- Controller Subsystem  
- Power System Subsystem  
- Aircraft Dynamics Subsystem  

Simulation Time: **1800 seconds**

Outputs:
- Velocity response  
- Thrust vs Drag equilibrium  
- Hybrid power blending behavior  

To run:

Open:

```
03_Simulink_Model/hybrid_aircraft.slx
```

---

# 🛠 CAD Design

Designed using Fusion 360:

- Aircraft fuselage concept  
- Hybrid engine mount  
- Battery pack layout  
- Propeller assembly  

---

# 🚀 Key Results

- Realistic cruise equilibrium achieved  
- Hybrid power blending validated  
- Nonlinear thrust feedback implemented  
- Aerodynamic drag stabilization observed  
- Structural feasibility verified  

---

# 📈 Future Improvements

- Altitude-dependent air density model  
- Battery state-of-charge tracking  
- Climb and descent dynamics  
- Thermal modeling  
- Hybrid power split optimization  

---

# 👨‍💻 Author

**Sujeet Samal**  
Aerospace Engineering  
Hybrid Propulsion & Aircraft Systems

---

# 📄 License

This project is for educational and research demonstration purposes.
