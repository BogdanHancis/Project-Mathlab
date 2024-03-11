function sine
clear all;	

f=50;	
t=(0:0.001:0.04);

y=sin(2*pi*f*t);	
	
plot(t,y);
end