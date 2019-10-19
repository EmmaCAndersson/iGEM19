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
genesToAdd.genes = {'bphA1234','bphB','bphC','bphD','bphK','pcbA5'};
model = addGenesRaven(model,genesToAdd);

%% 3.1 Add incolmplete PCB degradation pathway
clc
% Here the PCB degradation pathway is integrated into the model, simulating
% what will be done in the lab. In order to run this section, make sure
% that the excel sheets titled 'bphA.xlsx', 'bphB.xlsx', 'bphC.xlsx',
% 'bphD.xlsx', 'bphK.xlsx' and 'transport_and_exchange.xlsx' are in the
% current directory, along with the function file 'add_to_model.m'.

% Use 'add_to_model.m' to add the information from each excel sheet into
% the model.
bphA = readtable('bphA.xlsx');
model=add_to_model(model,bphA);

bphB = readtable('bphB.xlsx');
model=add_to_model(model,bphB);

bphC = readtable('bphC.xlsx');
model=add_to_model(model,bphC);

bphD = readtable('bphD.xlsx');
model=add_to_model(model,bphD);

bphK = readtable('bphK.xlsx');
model=add_to_model(model,bphK);

pcbA5 = readtable('pcbA5.xlsx');
model=add_to_model(model,pcbA5);

% Note: for further sections of code it is important that the transport and
% exchange reactions are added last.
transport_and_exchange = readtable('transport_and_exchange.xlsx');
model=add_to_model(model,transport_and_exchange);

%% 3.2 Add remaining genes to complete the pathway
clc
% Also want to investigate the effect a complete pathway would have on the
% PCB degrading capabilities. In order to run this section, make sure that
% the excel sheet 'bphHIJ.xlsx' is in the current directory, along with 
% the function file 'add_to_model.m'.

bphHIJ = readtable('bphHIJ.xlsx');
model=add_to_model(model,bphHIJ);

%% 4 Run simulations
clc, clf
% Use the 'simulate_PCB_degradation.m' function file to perform simulations
% and plot the results. 

simulate_PCB_degradation(model);

%% 5. Change objective function to benzoate production
% The default objective function for the model is growth. While this is
% reasonable, in order to investigate the theoretical maximum capacity of
% the model to degrade PCB, a new simulation will be run where the
% objective function(s) will be the end-products of the degradation
% pathway.

% Remove previous objective function
model.c = zeros(length(model.rxns),1);

% Find the indexes of the end product exchange reactions. Note that
% searching for 'banzoate exchange' will also yield matches for the various
% chlorobenzoate exchange reactions.
index = 1:length(model.rxns);
benzoate_matches=strfind(model.rxnNames,'benzoate exchange');
benzoate_positions=~cellfun(@isempty,benzoate_matches);
benzoate_index=index(benzoate_positions);

% Set new objective function
model.c(benzoate_index) = 1;