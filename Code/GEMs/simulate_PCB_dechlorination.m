function simulate_PCB_dechlorination(model)
% Function file similar to 'simulate_PCB_degradation.m', but for the model
% that only contains pcbA5. Since no end products are able to be produced
% in this instance these have been removed from the plot for
% simplification.

% Solve the system
solution = solveLP(model);

% Extract the relevant exchange reactions from the solution
PCB_exchange_rxns = solution.x(3604:end);
PCB_exchange_names = model.rxnNames(3604:end);
matches=strfind(PCB_exchange_names,'exchange');
positions=~cellfun(@isempty,matches);
exchange_rxns=PCB_exchange_rxns(positions);
exchange_names=PCB_exchange_names(positions);

% Want to remove all exchange reactions with a flux of 0 to make the final
% plot cleaner.Find the indexes of the elements that will be removed.
j =1;
positions_to_remove = [];
for i = 1:length(exchange_rxns)
    if exchange_rxns(i) == 0
        positions_to_remove(j) = i;
        j = j+1;
    end
end

% Remove the undesired reactions.
exchange_rxns(positions_to_remove) = [];
exchange_names(positions_to_remove) = [];

% Remove chloride exchange as it makes plot unbalanced
chloride_match=strfind(exchange_names,'chlorine exchange');
chloride_position=~cellfun(@isempty,chloride_match);
exchange_rxns(chloride_position)=[];
exchange_names(chloride_position)=[];

% Prepare a vector that will be used to find the indexes of specific
% reactions
index = 1:length(exchange_rxns);

% Find the indexes of differently chlorinated biphenyls
octachlor_matches=strfind(exchange_names,'octachlorobi');
octachlor_positions=~cellfun(@isempty,octachlor_matches);
octachlor_index=index(octachlor_positions);

heptachlor_matches=strfind(exchange_names,'heptachlorobi');
heptachlor_positions=~cellfun(@isempty,heptachlor_matches);
heptachlor_index=index(heptachlor_positions);

hexachlor_matches=strfind(exchange_names,'hexachlorobi');
hexachlor_positions=~cellfun(@isempty,hexachlor_matches);
hexachlor_index=index(hexachlor_positions);

pentachlor_matches=strfind(exchange_names,'pentachlorobi');
pentachlor_positions=~cellfun(@isempty,pentachlor_matches);
pentachlor_index=index(pentachlor_positions);

tetrachlor_matches=strfind(exchange_names,'tetrachlorobi');
tetrachlor_positions=~cellfun(@isempty,tetrachlor_matches);
tetrachlor_index=index(tetrachlor_positions);

trichlor_matches=strfind(exchange_names,'trichlorobi');
trichlor_positions=~cellfun(@isempty,trichlor_matches);
trichlor_index=index(trichlor_positions);

dichlor_matches=strfind(exchange_names,'dichlorobi');
dichlor_positions=~cellfun(@isempty,dichlor_matches);
dichlor_index=index(dichlor_positions);

%--------------------------------------------------------------------------
% Plotting section
%--------------------------------------------------------------------------

% Set color palette
black = [25,25,25]./255;
green = [61,128,127]./255;
dark_blue = [61,90,128]./255;
light_blue = [167,198,206]./255;
dark_orange = [226,125,96]./255;
light_orange = [232,168,124]./255;
purple = [195,141,158]./255;
pink = [255,191,191]./255;
white_ish = [225,233,235]./255;

% Collect the colors in a matrix (for plotting convenience).
colors = [black
    dark_orange
    light_orange
    green
    dark_blue
    light_blue
    purple
    pink
    white_ish];

% Want to collect all compounds of the same type in a single bar to
% simplify the plot. Start by predefining each 'class'.
octa = 0;
hepta = 0;
hexa = 0;
penta = 0;
tetra = 0;
tri = 0;
di = 0;

% Add the fluxes to the corresponding 'class'.
for i = 1:length(exchange_rxns)
    if ismember(i,octachlor_index)
        octa = octa + exchange_rxns(i);
    elseif ismember(i,heptachlor_index)
        hepta = hepta + exchange_rxns(i);
    elseif ismember(i,hexachlor_index)
        hexa = hexa + exchange_rxns(i);
    elseif ismember(i,pentachlor_index)
        penta = penta + exchange_rxns(i);
    elseif ismember(i,tetrachlor_index)
        tetra = tetra + exchange_rxns(i);
    elseif ismember(i,trichlor_index)
        tri = tri + exchange_rxns(i);
    else ismember(i,dichlor_index)
        di = di + exchange_rxns(i);
    end
end

% Collect the classes in a vector to be plotted.
groups = [octa,hepta,hexa,penta,tetra,tri,di];

% Plot the bars independenly to make each a different color.
set(gcf,'color',white_ish);
figure(1)
hold on
for i = 1:length(groups)
    b = bar(i,groups(i));
    set(b,'FaceColor',colors(i,:));
end
axis([0,8,-0.30,0.70]);

% Make a legend 
legend('Octachlorinated biphenyl','Heptachlorinated biphenyl',...
     'Hexachlorinated biphenyl','Pentachlorinated biphenyl',...
     'Tetrachlorinated biphenyl','Trichlorinated biphenyl',...
     'Dichlorinated biphenyl');

% Add titles and labels to the graph.
title('Degadation/production of PCB congeners')
xlabel('Compound class')
ylabel('Reaction rate')

end