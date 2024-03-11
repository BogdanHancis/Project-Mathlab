function cosine
clear all;	

f=50;	
t=(0:0.001:0.04);

y=cos(2*pi*f*t);	
	
plot(t,y);
end