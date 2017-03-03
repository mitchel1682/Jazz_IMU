clear all; clc;
%1.LOAD ENGINE PARAMETERS:

%1.1 Load .eng Thrust Curve File:
TC = dlmread('AeroTech_F30.eng',' ',2,3);

%1.2 Total Impulse (N-s)
TI = 47.0;

%1.3 Total Engine Mass (Kg)
M_t = (70.0)./1000; 

%1.4 Fuel Mass (Kg)
m_f = (31.8)./1000;

%1.5 Casing Mass (Kg)
m_o = M_t - m_f;

%1.6 Engine CG relative to datum (m)
CG_e = [0 0 -1.0];


%2.LOAD VEHICLE PARAMETERS:

%2.1 Dry Mass (Kg)
m_dry = 10;

%2.2 Dry vehicle CG relative to datum (m)
CG_dry = [0 0 0];


%2. Run Simulink Environmental Sim:
%sim('env_sim');
