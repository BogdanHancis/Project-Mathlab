%creates a void figure –will be Figure1
figure();
%creates a main menu item at the end of the MatLab default
%menu of the figure previously created
h = uimenu('Label','User_Menu');
%creates a new void figure – will be Figure2,Figure3, etc
uimenu(h,'Label','New Figure','Callback','figure');
%saves the workspace in the working directory
uimenu(h,'Label','Save','Callback','save');
%creates the menu item that closes the window
%with accelerator Ctrl+Q
uimenu(h,'Label','Close','Callback','close',...
    'Separator','on','Accelerator','Q');