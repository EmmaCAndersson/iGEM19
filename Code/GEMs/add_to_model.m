function updated_model = add_to_model(model,sheet)
% Function file that, given a properly structured excel-sheet and a
% genome-scale metabolic model, will add the reactions decribed in the
% sheet to the model.

% Make sure nothing is stored from earlier
clear rxnToAdd metsToAdd genesToAdd

% Add the contents of the sheet to the structure 'rxnsToAdd', which will
% then be integrated into the model. Please note that this file can be
% modified depending on how you choose to integrate your reactions. If
% another approach than reaction type 3 (described in the RAVEN
% documentation) is desired, please read the RAVEN documentation for
% 'addRxns' and adjust this file accordingly by commenting out- and in
% lines and adjusting the addRxn function arguments.

rxnsToAdd.rxns = sheet.ID;
%rxnToAdd.mets = split(sheet.mets, '//');
%rxnToAdd.rxnComps = split(sheet.comps, '//');
%rxnToAdd.stoichCoeffs = split(sheet.stoichCoeffs_, '//');
rxnsToAdd.equations = sheet.equation;
rxnsToAdd.ub = sheet.ub;
rxnsToAdd.lb = sheet.lb;
rxnsToAdd.rxnNames = sheet.name;
%rxnToAdd.grRules = sheet.grRules;

updated_model=addRxns(model,rxnsToAdd,3,'',true);
end