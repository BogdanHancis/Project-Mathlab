[t,y]=ode45(@vdp1,[0 20],[2 0]);
plot(t,y(:,1));