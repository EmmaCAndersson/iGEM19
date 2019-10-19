%% 0. Raven installation
clear all, clc
% Make sure that RAVEN is successfully installed and running as intended
global CBT_LP_SOLVER
CBT_LP_SOLVER = 'glpk';
checkInstallation;

%% 1. Load GEM for S. cerevisiae
% Load provided S. cerevisiae model
model=importModel('yeastGEM.xml');

% Confirm that model is functional
solveLP(model)
printFluxes(model,ans.x)

%% 2. Add missing metabolites & genes
% Before adding the reactions required for PCB degradation, all of the
% involved metabolites and genes will first be integrated into the model 
% separately. This will make it easier to keep track of the fluxes later.

% Make sure nothing is stored from earlier
clc
clear rxnToAdd metsToAdd genesToAdd

% Load metabolite list from excel
metabolites = readtable('metsToAdd_all.xlsx');

% Add metabolites to model
metsToAdd.mets = metabolites.mets;
metsToAdd.metNames = metabolites.metNames;
metsToAdd.compartments = metabolites.compartments;

model = addMets(model,metsToAdd);

% Add missing genes to model
genesToAdd.genes = {'pcbA5'};
model = addGenesRaven(model,genesToAdd);

%% 3. Add pcbA5 reactions to the model
pcbA5 = readtable('pcbA5.xlsx');
model=add_to_model(model,pcbA5);

transport_and_exchange = readtable('transport_and_exchange.xlsx');
model=add_to_model(model,transport_and_exchange);

%% 4. Run simulations with the model containing only pcbA5
% Use the 'simulate_PCB_dechlorination.m' function file to perform simulations
% and plot the results. 

simulate_PCB_dechlorination(model);

%% 5 Change objective to chlorine exchange
% Remove previous objective function
model.c = zeros(length(model.rxns),1);

% Find the indexes of the end product exchange reactions. Note that
% searching for 'banzoate exchange' will also yield matches for the various
% chlorobenzoate exchange reactions.
index = 1:length(model.rxns);
chloride_matches=strfind(model.rxnNames,'chlorine exchange');
chloride_positions=~cellfun(@isempty,chloride_matches);
chloride_index=index(chloride_positions);

% Set new objective function
model.c(chloride_index) = 1;

