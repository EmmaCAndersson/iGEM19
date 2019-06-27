% This is the main progam file
% CSTR simulation: Batch simulation better?

% The following variables must be defined
...
Qin =1
Qout =0.2 

% The federal government has established the safe drinking water standard (also called maximum
% contaminant level) for PCBs as 500 ppt (parts per trillion)
MCL=500*10^-12

Cin = 4.4     % Median concentration accoring to Naturvårdsverket is 4.4 microg summa-PCB7/kg TS
V = 1         % If the volume is constant set V=1
R = 0.5       % Rate of reaction (if PCB rate of degradation) 
y0=20         % Biomass conc. at t0 

% Mass balance for the reactor: Concentration over time equals the (inflow -
% the outflow) + the production/degradation

% We want to solve the mass balance equ. and get C_out to be at "maximun
% contaminant level" 

tspan=[0 1000];

[t,y]=ode15s(@(t,Y)massbalance1(t,Y,Qin,Qout,Cin,Cout,V,R), tspan, y0)

plot(t,y,'-o')



