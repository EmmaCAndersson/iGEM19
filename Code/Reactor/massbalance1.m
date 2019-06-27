function dydt=massbalance1(t,y,Qin,Qout,Cin,Cout,V,R)

% This calculate the mass balance in the reactor 

dydt=(Qin*Cin - Qout*Cout)+ V*R
%if Cout>=MCL
    %Qin=Qin-i
    %i=[1,k]
%end