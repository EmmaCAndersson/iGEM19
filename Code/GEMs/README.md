This directory contains a number of files that are divided between excel sheets and MATLAB files. Below is a sort description of each file.

MATLAB files
- PCBDegradationGEM.m: Main file, used to generate genome scale metabolic models simulating S. cerevisiae with the capacity to degrade polychlorinated biphenyls. Utilizes the files 'add_to_model.m', 'simulate_PCB_degradation.m' and the excel sheets 'BphA.xlsx', 'BphB.xlsx', BphC.xlsx', 'BphD.xlsx', 'BphK.xlsx', 'BphHIJ.xlsx', 'pcbA5.xlsx' and 'metsToAdd_all.xlsx'.
- PCBDechlorinationGEM.m: Main file, used to generate genome scale metabolic models simulating S. cerevisiae with the capacity to dechlorinate polychlorinated biphenyls. Utilizes the files 'add_to_model.m', 'simulate_PCB_dechlorination.m' and the excel sheets 'pcbA5.xlsx' and 'metsToAdd_all.xlsx'.
- add_to_model.m: Function file that takes the content present in one of the excel files and adds it to the model.
- simulate_PCB_degradation.m: Function file that finds the optimal solution of the model under the current conditions and plots the resulting exchange fluxes of the metabolites involved in the PCB degradation pathway.
- simulate_PCB_dechlorination.m: Similar to 'simulate_PCB_degradation.m', but adapted to be used by 'PCBDechlorinationGEM.m'.

Excel sheets
- BphA.xlsx: Excel sheet containing all possible reactions that are catalyzed by the enzyme complex BphA1A2A3A4.
- BphB.xlsx: Excel sheet containing all possible reactions that are catalyzed by the enzyme BphB.
- BphC.xlsx: Excel sheet containing all possible reactions that are catalyzed by the enzyme BphC.
- BphD.xlsx: Excel sheet containing all possible reactions that are catalyzed by the enzyme BphD.
- BphK.xlsx: Excel sheet containing all possible reactions that are catalyzed by the enzyme BphK.
- BphHIJ.xlsx: Excel sheet containing all possible reactions that are catalyzed by the enzymes BphH, BphI and BphJ.
- pcbA5.xlsx: Excel sheet containing all possible reactions that are catalyzed by the enzyme PcbA5.
- metsToAdd_all.xlsx: Excel sheet containing all of the metabolites that are involved in the PCB degradation pathway.

Additional files
- yeast.xml: Genome-scale metabolic model of S. cerevisiae. Acquired from Chalmers Sysbio department, [here](https://github.com/SysBioChalmers/yeast-GEM). 

The different sections of the main files ‘PCBDegradationGEM.m’ and ‘PCBDechlorinationGEM.m’ are used to load the model, integrate additional reactions using the function file ‘add_to_model.m’ as well as run simulations on the generated models using the function file ‘simulate_PCB_degradation.m’ and ‘simulate_PCB_dechlorination.m’. Please note that in order to run these files it is a requirement to have the RAVEN toolbox installed, as well as having all of the relevant files and excel sheets described above in the working directory.
