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
%t=[0 1000];
%Y0 initial values 

%[t,y]=ode15s(@massbalance1,t,Y0)

%plot(t,y,'-o')

%% Kinetic reaction simulation calculation
% The rection from PCB to benzoate and hydroxypenta-dienote involves 6
% enzymekatalysed reactions

% Call on the function
[t,y] = ode15s(@example,[0 10],[1 0 1]);

% 
plot(t,y);



