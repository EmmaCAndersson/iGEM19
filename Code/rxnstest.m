
%% Get data bphA
clc; clear all; 
T=readtable('bphA_reactions.xlsx');

id=T.ID;
Name=T.NAME;
Biphenyl_substrate=T.Biphenyl_Substrate; 
eq=T.EQUATION;
metabolitename=T.METABOLITES_ABC;
stoichio=T.STOCHIOMETIC_COEFFS;
comp=T.COMPARTMENT;
geneassoc=T.GENE_ASSOCIATION;
lb=T.LOWER_BOUND;
ub=T.UPPER_BOUND;
%COMPARTMENT
compartment=split(string(comp),'//');% make data into string array and split data at // 
comp1=compartment';
comp2=comp1(:); 
%compartment2=char(compartment1);

%METABOLITES
metabolites=split(string(metabolitename),'//');% make data into string array and split data at //
mets1=metabolites'; %need to transpose matrix to get vector in right order
mets2=mets1(:);
%mets2=char(mets2);

%STOICHIOMETRIC COEFFICIENTS
stoich=split(string(stoichio),'//');% make data into string array and split data at //
stoich1=stoich'; %need to transpose matrix to get vector in right order
stoich2=stoich1(:);
%stoich2=char(stoich2);
stoich3=str2double(stoich2); %convert string to numbers
stoich4=str2double(stoich);
LB=lb';
UB=ub';

%% Get data bphB

clc; clear all; 
T=readtable('bphB.xlsx');

id=T.ID;
Name=T.NAME;
Biphenyl_substrate=T.SUBSTRATE; 
eq=T.EQUATION;
metabolitename=T.METABOLITES;
stoichio=T.STOICHIOMETRIC_COEFFS;
comp=T.COMPS;
ECnumb=T.EC_NUMBER;
geneassoc=T.GENE_ASSOCIATION;
lb=T.LOWER_BOUND;
ub=T.UPPPER_BOUND;
%COMPARTMENT
compartment=split(string(comp),'//');% make data into string array and split data at // 
%comp1=compartment';
%comp2=comp1(:); 
%compartment2=char(compartment1);

%METABOLITES
metabolites=split(string(metabolitename),'//');% make data into string array and split data at //
%mets1=metabolites'; %need to transpose matrix to get vector in right order
%mets2=mets1(:);
%mets2=char(mets2);

%STOICHIOMETRIC COEFFICIENTS
stoich=split(string(stoichio),'//');% make data into string array and split data at //
%stoich1=stoich'; %need to transpose matrix to get vector in right order
%stoich2=stoich1(:);
%stoich2=char(stoich2);
%stoich3=str2double(stoich2); %convert string to numbers
stoich4=str2double(stoich);
LB=lb';
UB=ub';
%% Get data bphC

clc; clear all; 
T=readtable('bphC.xlsx');

id=T.ID;
Name=T.NAME;
%Biphenyl_substrate=T.SUBSTRATE; 
eq=T.EQUATION;
metabolitename=T.METABOLITES;
stoichio=T.STOCHIOMETIC_COEFFS;
comp=T.COMPARTMENT;
ECnumb=T.EC_NUMBER;
geneassoc=T.GENE_ASSOCIATION;
lb=T.LOWER_BOUND;
ub=T.UPPER_BOUND;
%COMPARTMENT
compartment=split(string(comp),'//');% make data into string array and split data at // 
%comp1=compartment';
%comp2=comp1(:); 
%compartment2=char(compartment1);

%METABOLITES
metabolites=split(string(metabolitename),'//');% make data into string array and split data at //
%mets1=metabolites'; %need to transpose matrix to get vector in right order
%mets2=mets1(:);
%mets2=char(mets2);

%STOICHIOMETRIC COEFFICIENTS
stoich=split(string(stoichio),'//');% make data into string array and split data at //
%stoich1=stoich'; %need to transpose matrix to get vector in right order
%stoich2=stoich1(:);
%stoich2=char(stoich2);
%stoich3=str2double(stoich2); %convert string to numbers
stoich4=str2double(stoich);
LB=lb';
UB=ub';

%% Get data bphD

clc; clear all; 
T=readtable('bphD.xlsx');

id=T.ID;
Name=T.NAME;
%Biphenyl_substrate=T.SUBSTRATE; 
eq=T.EQUATION;
metabolitename=T.METABOLITES;
stoichio=T.STOCHIOMETIC_COEFFS;
comp=T.COMPARTMENT;
ECnumb=T.EC_NUMBER;
geneassoc=T.GENE_ASSOCIATION;
lb=T.LOWER_BOUND;
ub=T.UPPER_BOUND;
LB=lb';
UB=ub'; 
%COMPARTMENT
compartment=split(string(comp),'//');% make data into string array and split data at // 
%comp1=compartment';
%comp2=comp1(:); 
%compartment2=char(compartment1);

%METABOLITES
metabolites=split(string(metabolitename),'//');% make data into string array and split data at //
%mets1=metabolites'; %need to transpose matrix to get vector in right order
%mets2=mets1(:);
%mets2=char(mets2);

%STOICHIOMETRIC COEFFICIENTS
stoich=split(string(stoichio),'//');% make data into string array and split data at //
%stoich1=stoich'; %need to transpose matrix to get vector in right order
%stoich2=stoich1(:);
%stoich2=char(stoich2);
%stoich3=str2double(stoich2); %convert string to numbers
stoich4=str2double(stoich);
LB=lb';
UB=ub'; 

%% Get data bphH,I,J

clc; clear all; 
T=readtable('bphH,I,J.xlsx');

id=T.ID;
Name=T.NAME;
eq=T.EQUATION;
%metabolitename=T.METABOLITES;
stoichio=T.STOICHIOMETRIC_COEFFS;
comp=T.COMPS;
ECnumb=T.EC_NUMBER;
geneassoc=T.GENE_ASSOCIATION;
lb=T.LOWER_BOUND;
ub=T.UPPER_BOUND;
LB=lb';
UB=ub'; 
%COMPARTMENT
compartment=split(string(comp),'//');% make data into string array and split data at // 
%METABOLITES
metabolites=split(string(metabolitename),'//');% make data into string array and split data at //
%STOICHIOMETRIC COEFFICIENTS
stoich=split(string(stoichio),'//');% make data into string array and split data at //
stoich4=str2double(stoich);
LB=lb';
UB=ub'; 
%% Get data bphK
% PROBLEM: can't split with different dimensions. want to say: split on
% '//' for rows 1 to X (create new subset), and thus only split things with same
% dimensions
clc; clear all; 
T=readtable('bphK.xlsx');

id=T.ID;
Name=T.NAME;
metabolitename=T.METABOLITES;
stoichio=T.STOCHIOMETIC_COEFFS_;
comp=T.COMPARTMENT;
ECnumb=T.EC_NUMBER;
geneassoc=T.GENE_ASSOCIATION;
lb=T.LOWER_BOUND;
ub=T.UPPER_BOUND;
LB=lb';
UB=ub'; 
%COMPARTMENT
%compartment=split(string(comp),'//');% make data into string array and split data at // 
%METABOLITES
%metabolites=split(string(metabolitename),'//');% make data into string array and split data at //
%STOICHIOMETRIC COEFFICIENTS
metabolites=split(metabolitename,'//',1:12)
%stoich=split(string(stoichio),'//');% make data into string array and split data at //
%stoich4=str2double(stoich);
metabolitename
LB=lb';
UB=ub'; 
%% bphA
%Will it be a problem that datasets are of different kinds?
rxnsToAdd.rxnNames     = {'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation';'biphenyl dihydroxylation'};
rxnsToAdd.rxns         = {'r_6001';'r_6002';'r_6003';'r_6004';'r_6005';'r_6006';'r_6007';'r_6008';'r_6009';'r_6010';'r_6011';'r_6013';'r_6014';'r_6015';'r_6016';'r_6017';'r_6018';'r_6019';'r_6020'};    
rxnsToAdd.mets         = ["2,2*,4-trichlorobiphenyl","H+","NADH","oxygen","2,2*,4-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","NAD";"2,2*,5-trichlorobiphenyl","H+","NADH","oxygen","2,2*,5-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","NAD";"2,2*,6-trichlorobiphenyl","H+","NADH","oxygen","2,2*,6-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","NAD";"2,3*,4-trichlorobiphenyl","H+","NADH","oxygen","2,3*,4-trichloro-5,6-dihydro-5,6-dihydroxybiphenyl","NAD";"2,3*,4-trichlorobiphenyl","H+","NADH","oxygen","2,3*,4-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","NAD";"2,3*,5-trichlorobiphenyl","H+","NADH","oxygen","2,3*,5-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","NAD";"2,3*,6-trichlorobiphenyl","H+","NADH","oxygen","2,3*,6-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","NAD";"2,4,4*-trichlorobiphenyl","H+","NADH","oxygen","2,4,4*-trichloro-5,6-dihydro-5,6-dihydroxybiphenyl","NAD";"2,4,4*-trichlorobiphenyl","H+","NADH","oxygen","2,4,4*-trichloro-2*,3*-dihydro-2*,3*-dihydroxybiphenyl","NAD";"2,4*,5-trichlorobiphenyl","H+","NADH","oxygen","2,4*,5-trichloro-2*,3*-dihydro-2*,3*-dihydroxybiphenyl","NAD";"2,4*,6-trichlorobiphenyl","H+","NADH","oxygen","2,4*,6-trichloro-2*,3*-dihydro-2*,3*-dihydroxybiphenyl","NAD";"2,2*,4,4*-tetrachlorobiphenyl","H+","NADH","oxygen","2,2*,4,4*-tetrachloro-5,6-dihydro-5,6-dihydroxybiphenyl","NAD";"2,2*,4,5*-tetrachlorobiphenyl","H+","NADH","oxygen","2,2*,4,5*-tetrachloro-5,6-dihydro-5,6-dihydroxybiphenyl","NAD";"2,2*,4,6-tetrachlorobiphenyl","H+","NADH","oxygen","2,2*,4,6-tetrachloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","NAD";"2,2*,4,6*-tetrachlorobiphenyl","H+","NADH","oxygen","2,2*,4,6*-tetrachloro-5,6-dihydro-5,6-dihydroxybiphenyl","NAD";"2,3*,4,5*-tetrachlorobiphenyl","H+","NADH","oxygen","2,3*,4,5*-tetrachloro-5,6-dihydro-5,6-dihydroxybiphenyl","NAD";"2,2*,4,4*,6-pentachlorobiphenyl","H+","NADH","oxygen","2,2*,4,4*,6-pentachloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","NAD"]; %mets or metnames?
rxnsToAdd.stoichCoeffs = [-1,-2,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1;-1,-1,-1,-1,1,1];
rxnsToAdd.grRules      = {'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234';'bphA1234'};

rxnsToAdd.lb           =[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
rxnsToAdd.ub           =[1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000]; ;
rxnsToAdd.c            ={} ;
rxnsToAdd.subSystems   ={} ;  

%% bphB
rxnsToAdd.rxnNames     = {'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl';'dehydration of 2,3-dihydro-2,3-dihydroxybiphenyl'};
rxnsToAdd.rxns         = {'r_7001';'r_7002';'r_7003';'r_7004';'r_7005';'r_7006';'r_7007';'r_7008';'r_7009';'r_7010';'r_7011';'r_7013';'r_7014';'r_7015';'r_7016';'r_7017';'r_7018';'r_7019';'r_7020'};
rxnsToAdd.mets         = ["2,2*-dichloro-5,6-dihydro-5,6-dihydroxybiphenyl","2,2*-chloro-5,6-dihydroxybiphenyl","H+","NAD","NADH";"2,2*,4-trichloro-5,6-dihydro-5,6-dihydroxybiphenyl","2,2*,4-trichloro-5,6-dihydroxybiphenyl","H+","NAD","NADH";"2,2*,4-trichloro-5*,6*-dihydro-dihydroxybiphenyl","2,2*,4-trichloro-5*,6*-dihydroxybiphenyl","H+","NAD","NADH";"2,2*,5-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","2,2*,5-trichloro-5*,6*-dihydroxybiphenyl","H+","NAD","NADH";"2,2*,6-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","2,2*,6-trichloro-5*,6*-dihydroxybiphenyl","H+","NAD","NADH";"2,3*,4-trichloro-5,6-dihydro-5,6-dihydroxybiphenyl","2,3*,4-trichloro-5,6-dihydroxybiphenyl","H+","NAD","NADH";"2,3*,4-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","2,3*,4-trichloro-5*,6*-dihydroxybiphenyl","H+","NAD","NADH";"2,3*,5-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","2,3*,5-trichloro-5*,6*-dihydroxybiphenyl","H+","NAD","NADH";"2,3*,6-trichloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","2,3*,6-trichloro-5*,6*-dihydroxybiphenyl","H+","NAD","NADH";"2,4,4*-trichloro-5,6-dihydro-5,6-dihydroxybiphenyl","2,4,4*-trichloro-5,6-dihydroxybiphenyl","H+","NAD","NADH";"2,4,4*-trichloro-2*,3*-dihydro-2*,3*-dihydroxybiphenyl","2,4,4*-trichloro-2*,3*-dihydroxybiphenyl","H+","NAD","NADH";"2,4*,5-trichloro-2*,3*-dihydro-2*,3*-dihydroxybiphenyl","2,4*,5-trichloro-2*,3*-dihydroxybiphenyl","H+","NAD","NADH";"2,4*,6-trichloro-2*,3*-dihydro-2*,3*-dihydroxybiphenyl","2,4*,6-trichloro-2*,3*-dihydroxybiphenyl","H+","NAD","NADH";"2,2*,4,4*-tetrachloro-5,6-dihydro-5,6-dihydroxybiphenyl","2,2*,4,4*-tetrachloro-5,6-dihydroxybiphenyl","H+","NAD","NADH";"2,2*,4,5*-tetrachloro-5,6-dihydro-5,6-dihydroxybiphenyl","2,2*,4,5*-tetrachloro-5,6-dihydroxybiphenyl","H+","NAD","NADH";"2,2*,4,6-tetrachloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","2,2*,4,6-tetrachloro-5*,6*-dihydroxybiphenyl","H+","NAD","NADH";"2,2*,4,6*-tetrachloro-5,6-dihydro-5,6-dihydroxybiphenyl","2,2*,4,6*-tetrachloro-5,6-dihydroxybiphenyl","H+","NAD","NADH";"2,3*,4,5*-tetrachloro-5,6-dihydro-5,6-dihydroxybiphenyl","2,3*,4,5*-tetrachloro-5,6-dihydroxybiphenyl","H+","NAD","NADH";"2,2*,4,4*,6-pentachloro-5*,6*-dihydro-5*,6*-dihydroxybiphenyl","2,2*,4,4*,6-pentachloro-5*,6*-dihydroxybipheny","H+","NAD","NADH"];
rxnsToAdd.stoichCoeffs = [-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1;-1,1,1,-1,1];
rxnsToAdd.grRules      = {'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB';'bphB'};

rxnsToAdd.lb           = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
rxnsToAdd.ub           = [1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000];
rxnsToAdd.c            ={} ;
rxnsToAdd.subSystems   ={} ; 

%% bphC
rxnsToAdd.rxnNames     = {'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol';'oxidative cleavage of biphenyl-2,3-diol'};
rxnsToAdd.rxns         = {'r_8001';'r_8002';'r_8003';'r_8004';'r_8005';'r_8006';'r_8007';'r_8008';'r_8009';'r_8010';'r_8011';'r_8013';'r_8014';'r_8015';'r_8016';'r_8017';'r_8018';'r_8019';'r_8020'};
rxnsToAdd.mets         = ["2,2*-chloro-5,6-dihydroxybiphenyl","oxygen","5,8-dichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-dienote","H+";"2,2*,4-trichloro-5,6-dihydroxybiphenyl","oxygen","3,5,8-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,2*,4-trichloro-5*,6*-dihydroxybiphenyl","oxygen","5,8,10-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,2*,5-trichloro-5*,6*-dihydroxybiphenyl","oxygen","5,8,11-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,2*,6-trichloro-5*,6*-dihydroxybiphenyl","oxygen","5,8,12-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,3*,4-trichloro-5,6-dihydroxybiphenyl","oxygen","3,5,9-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,3*,4-trichloro-5*,6*-dihydroxybiphenyl","oxygen","4,8,10-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,3*,5-trichloro-5*,6*-dihydroxybiphenyl","oxygen","4,8,11-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,3*,6-trichloro-5*,6*-dihydroxybiphenyl","oxygen","4,8,12-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,4,4*-trichloro-5,6-dihydroxybiphenyl","oxygen","3,5,10-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,4,4*-trichloro-2*,3*-dihydroxybiphenyl","oxygen","3,8,10-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,4*,5-trichloro-2*,3*-dihydroxybiphenyl","oxygen","3,8,11-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,4*,6-trichloro-2*,3*-dihydroxybiphenyl","oxygen","3,8,12-trichloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,2*,4,4*-tetrachloro-5,6-dihydroxybiphenyl","oxygen","3,5,8,10-tetrachloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,2*,4,5*-tetrachloro-5,6-dihydroxybiphenyl","oxygen","3,5,8,11-tetrachloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,2*,4,6-tetrachloro-5*,6*-dihydroxybiphenyl","oxygen","5,8,10,12-tetrachloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,2*,4,6*-tetrachloro-5,6-dihydroxybiphenyl","oxygen","3,5,8,12-tetrachloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,3*,4,5*-tetrachloro-5,6-dihydroxybiphenyl","oxygen","3,5,9,11-tetrachloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+";"2,2*,4,4*,6-pentachloro-5*,6*-dihydroxybiphenyl","oxygen","3,5,8,10,12-pentachloro-2-hydroxy-6-oxo-6-phenylhexa-2,4-enote","H+"];
rxnsToAdd.stoichCoeffs = [-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1;-1,-1,1,1];
rxnsToAdd.grRules      = {'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC';'bphC'};

rxnsToAdd.lb           = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
rxnsToAdd.ub           = [1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000];
rxnsToAdd.c            ={} ;
rxnsToAdd.subSystems   ={} ; 

%% bphD
rxnsToAdd.rxnNames     = {'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'C-C bond hydrolysis of 2-hydroxy-6-oxo-6-phenylhexa-2,4-dienoic acid';'transport';'exchange';'transport';'exchange';'transport';'exchange';'transport';'exchange';'transport';'exchange';'transport';'exchange'};
rxnsToAdd.rxns         = {'r_8061';'r_8062';'r_8063';'r_8064';'r_8065';'r_8066';'r_8067';'r_8068';'r_8069';'r_8070';'r_8071';'r_8072';'r_8073';'r_8074';'r_8075';'r_8076';'r_8077';'r_8078';'r_8079';'r_8080';'r_8081';'r_8082';'r_8083'};
rxnsToAdd.mets         = {}; % :(
rxnsToAdd.stoichCoeffs = {}; % :(
rxnsToAdd.grRules      = {'bphD';'bphD';'bphD';'bphD';'bphD';'bphD';'bphD';'bphD';'bphD';'bphD';'bphD'}; % + a bunch of empty ones

rxnsToAdd.lb           =[0,0,0,0,0,0,0,0,0,0,0,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN];
rxnsToAdd.ub           =[1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN];
rxnsToAdd.c            ={};
rxnsToAdd.subSystems   ={}; 
%% bphH,I,J
rxnsToAdd.rxnNames     = {}; % need rxnNames
rxnsToAdd.rxns         = {'r_8080';'r_8081'};
rxnsToAdd.mets         = {{'2-hydroxypenta-2,4-enote','acetaldehyde','pyruvate'}
                         {'acetaldehyde','acetyl-CoA'}};
rxnsToAdd.stoichCoeffs = {{-1, 1, 1}
                         {-1, 1}}; %Will this work? (cell array)
rxnsToAdd.grRules      = {{'bphH','bphI'}
                         {'bphJ'}};
rxnsToAdd.lb           = [0,0];
rxnsToAdd.ub           = [1000,1000];
rxnsToAdd.c            ={};
rxnsToAdd.subSystems   ={}; 

%% bphK
rxnsToAdd.rxnNames     = {'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'dehalogenation';'transport';'exchange';'transport';'exchange'};
rxnsToAdd.rxns         = {'r_8031';'r_8032';'r_8033';'r_8034';'r_8035';'r_8036';'r_8037';'r_8038';'r_8039';'r_8040';'r_8041';'r_8042';'r_8043';'r_8044';'r_8045';'r_8046';'r_8047';'r_8048';'r_8049';'r_8050';'r_8051';'r_8052';'r_8053';'r_8054';'r_8055';'r_8056';'r_8057'};
rxnsToAdd.mets         = {};
rxnsToAdd.stoichCoeffs = {};
rxnsToAdd.grRules      = {'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK';'bphK'};

rxnsToAdd.lb           = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NaN,NaN,NaN,NaN];
rxnsToAdd.ub           = [1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,NaN,NaN,NaN,NaN];
rxnsToAdd.c            ={};
rxnsToAdd.subSystems   ={}; 