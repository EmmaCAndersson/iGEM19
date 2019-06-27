function dydt=massbalance1(t,y,Qin,Qout,Cin,Cout,V,R)
% The following variables must be defined
...
Qin =1
Qout =0.2 

% The federal government has established the safe drinking water standard (also called maximum
% contaminant level) for PCBs as 500 ppt (parts per trillion)
MCL=500*10^-12

Cin = 4.4
V = 1         
R = 0.5       
y0=20         

% Mass balance for the reactor: Concentration over time equals the (inflow -
% the outflow) + the production/degradation


% This calculate the mass balance in the reactor 

dydt=(Qin*Cin - Qout*Cout)+ V*R
%if Cout>=MCL
    %Qin=Qin-i
    %i=[1,k]
%end