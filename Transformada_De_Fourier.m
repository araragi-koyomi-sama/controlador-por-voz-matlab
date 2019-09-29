D=[1;2;1;2];
N=length(D);
W=exp(j*2*pi/N);
M=[1 1 1 1;1 W W^2 W^3;1 W^2 W^4 W^6;1 W^3 W^6 W^9];
f=M*D

