function interface_RC(VDC,R,C,T,D,N)
Fig=figure('Name','Time domain behavior of an RC circuit ');
Tc=D.*T;
%initial condition
y=0;
for j=1:N;
% charging, using function F1
% and plotting with RED
d(j)=min(y);
[t,y]=ode45('F1',[(j-1).*T (j-1).*T+Tc],d(j),[],VDC,R,C);
i=(VDC-y)./R;
subplot(211);plot(t,y,'r');
hold on;
grid on;
subplot(212);plot(t,i,'r');
hold on;
grid on;
% discharging, using function F2
% and plotting with BLUE
a(j)=max(y);
[t,y]=ode45('F2',[(j-1).*T+Tc j.*T],a(j),[],R,C);
i=(-y)./R;
subplot(211);plot(t,y,'b');
hold on;
subplot(212);plot(t,y,'b');
hold on;
grid on;
end
% text button for V_DC
uicontrol('Style','text', ...
'Units','normalized', ...
'Position',[0.91 0.95 0.1 0.04], ...
'String','VDC');
% edit button for V_DC
uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.91 0.92 0.1 0.04],...
'String','VDC',...
'Callback', ...
['VDC=str2num(get(gco,''string'')),close;interface_RC(VDC,R,C,T,D,N);']);
% text button for R
uicontrol('Style','text', ...
'Units','normalized', ...
'Position',[0.91 0.85 0.1 0.04], ...
'String','R');
% edit button for R
uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.91 0.82 0.1 0.04],...
'String','R',...
'Callback','R=str2num(get(gco,''string''));interface_RC(VDC,R,C,T,D,N);');
% text button for C
uicontrol('Style','text', ...
'Units','normalized', ...
'Position',[0.91 0.75 0.1 0.04], ...
'String','C');
% edit button for C
uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.91 0.72 0.1 0.04],...
'String','C',...
'Callback','C=str2num(get(gco,''string''));interface_RC(VDC,R,C,T,D,N);');
% text button for T
uicontrol('Style','text', ...
'Units','normalized', ...
'Position',[0.91 0.65 0.1 0.04], ...
'String','T');
% edit button for T
uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.91 0.62 0.1 0.04],...
'String','T',...
'Callback','T=str2num(get(gco,''string''));interface_RC(VDC,R,C,T,D,N);');
% text button for D
uicontrol('Style','text', ...
'Units','normalized', ...
'Position',[0.91 0.55 0.1 0.04], ...
'String','D');
% edit button for D
uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.91 0.52 0.1 0.04],...
'String','D',...
'Callback','D=str2num(get(gco,''string''));interface_RC(VDC,R,C,T,D,N);');
% text button for N
uicontrol('Style','text', ...
'Units','normalized', ...
'Position',[0.91 0.45 0.1 0.04], ...
'String','N');
% edit button for N
uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.91 0.42 0.1 0.04],...
'String','N',...
'Callback','N=str2num(get(gco,''string''));interface_RC(VDC,R,C,T,D,N);');
% Close pushbutton for closing the graph window
uicontrol('Style','pushbutton', ...
'Units','normalized', ...
'Position',[0.91 0.15 0.1 0.04], ...
'String','CLOSE', ...
'Callback','close; ');
% adding axes labels for first plot
% note in „xlabel” the variable to be displayed!!!
subplot(211);
xlabel(['Tc=', num2str(Tc),'[uS]']);
ylabel('uc [V]');
% adding axes labels for second plot
subplot(212);
xlabel('timp [mS]');
ylabel('ic [A]');