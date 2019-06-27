% This is the main progam file
% CSTR simulation: Batch simulation better?
% We want to solve the mass balance equ. and get C_out to be at "maximun
% contaminant level" 

%% Varaible dictionary
% Name    Type           Unit    Description
% ca,cb                  mol/L   concentration
% t                      h       time
% k                      1/h     rate of speed
% r                      mol/l*h velocity
% Qin
% Qout
% MCL                             The federal government has established the safe drinking water standard (also called maximum contaminant level) for PCBs as 500 ppt (parts per trillion)
% Cin                             Median concentration accoring to Naturvårdsverket is 4.4 microg summa-PCB7/kg TS
% V                               If the volume is constant set V=1
% R                               Rate of reaction (if PCB rate of degradation) 
% Y0                              Biomass concentration at t0 


%% Massbalance calculation (CSTR)
t=[0 1000];

[t,y]=ode15s(@(t,Y)massbalance1,t,y)

plot(t,y,'-o')

%% Kinetic reaction calculation (fed batch)
% The rection from PCB to benzoate and hydroxypenta-dienote involves 6
% enzymekatalysed reactions
% PCB -> 
clear
clc
close all

ca0	= 5; %mol l^-1 
cb0 = 0; % mol/L

t   = 0:0.1:10;

Y0  = [ca0 cb0];

%kalla på funktion tex ODE ösare
[t,Y] = ode15s(@kinetic_reak,t,Y0)

%plotta resultat

plot(t,Y)
legend({'A','B'},'Location','best')


