clear all;
close all;
Fig=figure('Name','MATLAB Graphics Project',...
'Units','normalized',...
'Position',[0.2 0.2 0.5 0.5],...
'NumberTitle','off','color',[0.3,0.5,1]);
f=uimenu('Label','Documentation');
uimenu(f,'Label','Front Page','Callback','front_page');
f1=uimenu(f,'Label','Circuits','Separator','on');
f1_1=uimenu(f1,'Label','Buck');
uimenu(f1_1,'Label','Circuit','Callback','');
uimenu(f1_1,'Label','Equations','Callback','');
f1_2=uimenu(f1,'Label','Boost');uimenu(f1_2,'Label','Circuit','Callback','');
uimenu(f1_2,'Label','Equations','Callback','');
f1_3=uimenu(f1,'Label','Buck-Boost');
uimenu(f1_3,'Label','Circuit','Callback','');
uimenu(f1_3,'Label','Equations','Callback','');
f1_4=uimenu(f1,'Label','Flyback');
uimenu(f1_4,'Label','Circuit','Callback','');
uimenu(f1_4,'Label','Equations','Callback','');
f1_5=uimenu(f1,'Label','Forward');
uimenu(f1_5,'Label','Circuit','Callback','');
uimenu(f1_5,'Label','Equations','Callback','');
f1_6=uimenu(f1,'Label','Push-Pull');
uimenu(f1_6,'Label','Circuit','Callback','');
uimenu(f1_6,'Label','Equations','Callback','');
uimenu(f,'Label','Examples','Callback','',...
'Separator','on');
uimenu(f,'Label','References','Callback','');
uimenu(f,'Label','Close','Callback','close',...
'Separator','on','Accelerator','Q');