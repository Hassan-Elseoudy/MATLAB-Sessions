%Hassan El-seoudy ID : 3780 GP 4
%Q1
num = [1 1];
den = [1 -0.9 0.81];
H = tf(num, den, 0.1, 'variable', 'z^-1')
freqz(num,den,1000,10)
s = filter(num,den,[ones(1,100)]);
step(H)
zplane(num,den);
[p,z] = pzmap(H);
p = abs(p)
si = filter(num,den,[1,zeros(1,99)]);
impulse(H)

%Q2
num = [1 0 -1];
den = [1 0 -0.81];
H = tf(num,den,0.1,'variable','z^-1')
h = filter(num,den, [1,zeros(1,99)]);
plot(h)
s = filter(num,den,[ones(1,100)]);
plot(s)
freqz(num,den,1000,10);

