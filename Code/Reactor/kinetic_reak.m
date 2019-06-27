function dydt=kinetic_reak(t,Y0)

% define variables
k1  = 0.3;
k2  = 0.2;
% define parametervalues 
ca  = Y0(1);
cb  = Y0(2);

r1  = k1 * ca;
r2  = k2 * cb;
% Calculate the deriveties 
dydt(1,1) = -r1;
dydt(2,1) = r1-r2;
dydt(3,1) = r2;
