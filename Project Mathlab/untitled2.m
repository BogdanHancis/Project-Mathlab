tspan = [0 4];
y01 = 0; [t,y1] = ode45(@(t,y1) 2*t, tspan, y01);
y02 = 5; [t,y2] = ode45(@(t,y2) 2*t, tspan, y02);
y03 = 10; [t,y3] = ode45(@(t,y3) 8*t, tspan, y03);
plot(t,y1,t,y2,t,y3);