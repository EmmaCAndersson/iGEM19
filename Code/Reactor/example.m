function [f] = example(~, x)
% Simulation of the first enzyme reaction done by PcbA5
% E+S <=> ES -> E+ P
% s=[S], p=[P], e=[E], c=[ES]

s= x(1);
p= x(2);
e= x(3);

k1= 1; % 1/sec 1/mM
km1= 1;
k2= 1;
E0= 1;

dsdt= -k1*e*s + km1*(E0-e);
dpdt= k2*(E0-e);
dedt= -k1*e*s + km1*(E0-e) + k2*(E0-e);

f= [dsdt; dpdt; dedt];
end
