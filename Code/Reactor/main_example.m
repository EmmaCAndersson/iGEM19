% Example: Kinetic reaction simulation calculation
% The rection from PCB to benzoate and hydroxypenta-dienote involves 6
% enzymekatalysed reactions

% Call on the function
[t,y] = ode15s(@example,[0 10],[1 0 1]);

% 
plot(t,y);



