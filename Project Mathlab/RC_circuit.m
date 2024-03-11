function RC_circuit(VDC,R,C,T,D,N)
% T=period; D=duty factor; N= number of displayed periods
figure('Name','Time domain behavior of RC circuits');
Tc=D.*T;
%initial conditions, capacitance is charged
y=0;
for j=1:N
d(j)=min(y); %initial conditions for current frame, charge phase
[t,y]=ode45('F1',[(j-1).*T (j-1).*T+Tc],d(j),[],VDC,R,C);
%capacitance current
i=(VDC-y)./R;
%plot charge voltage with RED
subplot(2,1,1);plot(t,y,'r');
hold on;grid on;
%plot charge current with RED
subplot(2,1,2);plot(t,i,'r');
hold on;grid on;
%initial conditions for current frame, discharge phase
a(j)=max(y);
[t,y]=ode45('F2',[(j-1).*T+Tc j.*T],a(j),[],R,C);
%capacitance current
i=(-y)./R;
%plot discharge voltage with BLUE
subplot(2,1,1);plot(t,y,'b');
hold on;grid on;%plot discharge current with BLUE
subplot(2,1,2);plot(t,i,'b');
hold on;grid on;
end
%customize axes
subplot(2,1,1);
xlabel(['Tc=', num2str(Tc),'[uS]']);
ylabel('vc [V]');
subplot(2,1,2);
ylabel('ic [A]');
xlabel('time [mS]');