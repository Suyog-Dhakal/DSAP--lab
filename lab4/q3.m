
b1 = [1,2,1];
a1 = [1, -1.2686,0.7051];
a2 = [1, -1.0106, 0.3583];
a3 = [1, -0.9044, 0.2155];

a = conv(a1, conv(a2,a3));
b = conv(0.0007378*b1, conv(b1,b1));
figure, zplane(b,a);
[zeros, poles, k] = sos2zp([[0.0007278*b1,a1];[b1,a2];[b1,a3]]);
zeros
poles
k


