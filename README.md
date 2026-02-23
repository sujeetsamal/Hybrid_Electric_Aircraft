# ✈️ Hybrid Electric Aircraft Concept

![MATLAB](https://img.shields.io/badge/MATLAB-R2023b-orange)
![Simulink](https://img.shields.io/badge/Simulink-Dynamic_Model-blue)
![Fusion360](https://img.shields.io/badge/CAD-Fusion360-red)
![Status](https://img.shields.io/badge/Project-Active-success)

---

## Abstract

This project presents a system-level modeling framework for a parallel hybrid-electric aircraft integrating propulsion, aerodynamics, flight dynamics, and structural validation. A nonlinear thrust model with aerodynamic drag feedback is implemented in Simulink to simulate longitudinal flight behavior. The propulsion architecture blends internal combustion engine power with electric motor assist to analyze hybrid performance and cruise equilibrium characteristics.

---

## I. Introduction

Hybrid-electric propulsion is a promising approach for reducing fuel consumption and emissions in next-generation aircraft. This project develops a simplified longitudinal flight dynamics model incorporating propulsion power blending and aerodynamic drag feedback to evaluate steady-state cruise performance.

---

## II. System Architecture

The hybrid propulsion configuration consists of:

- Internal Combustion Engine  
- Electric Motor Assist  
- Shared Shaft Power Transmission  
- Propeller-Based Thrust Generation  
- Aerodynamic Drag Model  
- Longitudinal Dynamic Feedback Loop  

<p align="center">
  <img src="docs/images/hybrid_architecture.png" width="700">
</p>

---

## III. Mathematical Modeling

### A. Thrust Model

The propeller thrust is modeled using a power-based nonlinear relationship:

$$
T = \frac{P}{V + \varepsilon}
\tag{1}
$$

where:

- $T$ = Thrust (N)  
- $P$ = Shaft Power (W)  
- $V$ = Aircraft Velocity (m/s)  
- $\varepsilon$ = Small constant to prevent singularity  

---

### B. Aerodynamic Drag Model

Aerodynamic drag is modeled using the quadratic drag equation:

$$
D = \frac{1}{2} \rho S C_d V^2
\tag{2}
$$

where:

- $\rho$ = Air Density (kg/m³)  
- $S$ = Wing Reference Area (m²)  
- $C_d$ = Drag Coefficient  
- $V$ = Velocity (m/s)  

---

### C. Longitudinal Dynamics

Applying Newton’s Second Law:

$$
a = \frac{T - D}{m}
\tag{3}
$$

where:

- $a$ = Acceleration (m/s²)  
- $m$ = Aircraft Mass (kg)  

Velocity is obtained via time integration:

$$
V(t) = \int a(t)\, dt
\tag{4}
$$

---

## IV. Simulation Implementation

The system is implemented using:

- MATLAB for mission and power modeling  
- Simulink for nonlinear dynamic simulation  
- Fusion 360 for CAD modeling  
- Static stress analysis for structural validation  

Simulation duration: **1800 seconds**

---

## V. Results

### Velocity Response

<p align="center">
  <img src="docs/images/velocity_response.png" width="700">
</p>

The simulation demonstrates:

- Initial transient acceleration  
- Drag-induced deceleration  
- Nonlinear thrust reduction  
- Steady-state cruise equilibrium  

At equilibrium:

$$
T = D
\tag{5}
$$

resulting in zero acceleration and constant cruise velocity.

---

## VI. Structural Validation

Finite stress analysis was performed on:

- Hybrid motor mount  
- Wing root section  

<p align="center">
  <img src="docs/images/motor_mount_stress.png" width="600">
</p>

<p align="center">
  <img src="docs/images/wing_root_stress.png" width="600">
</p>

Detailed report available in:

```
05_Structural_Check/stress_report.pdf
```

---

## VII. Project Structure

```
Hybrid_Electric_Aircraft_Concept/
├── 01_System_Definition/
├── 02_MATLAB_Model/
├── 03_Simulink_Model/
├── 04_CAD_Model_Fusion360/
├── 05_Structural_Check/
└── docs/images/
```

---

## VIII. Conclusion

The developed hybrid-electric aircraft model successfully integrates propulsion blending, nonlinear thrust computation, aerodynamic drag, and longitudinal dynamics. The simulation achieves realistic cruise equilibrium and demonstrates system-level interaction between propulsion and aerodynamics. Structural verification confirms feasibility of critical load-bearing components.

---

## IX. Future Work

- Altitude-dependent air density modeling  
- Battery state-of-charge integration  
- Climb and descent dynamics  
- Thermal analysis  
- Hybrid power optimization strategy  

---

## Author

**Sujeet Samal**  
Aerospace Engineering  
Hybrid Propulsion & Aircraft Systems  

---

## License

Educational and research demonstration project.
