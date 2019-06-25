% This is the main progam file
% Name all functions included in the main1; funcX  , where X=1,2,3....

% CSTR simulation: 

% The following variables must be defined
...
Qin =
Qout = 
Cin =          % This can be set to concentration of substrate (glukos) or PCB 
Cout = 
V =            % If the volume is constant set V=1
R =            % Rate of reaction (if PCB rate of degradation) 

% Mass balance for the reactor: Concentration over time equals the (inflow -
% the outflow) + the production/degradation

d(V*C)/dt = (Qin*Cin - Qout*Cout)+ V*R



