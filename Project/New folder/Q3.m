%Q.3) a
num = [1 -2 2 -1];
den = [ 1 -1.7 0.8 -0.1];
H = tf(num,den,-1,'variable','z^-1');
%freqz(num,den,1000,10)
zplane(num,den)
[p,z] = pzmap(H)
impulse = filter(num,den,[1 zeros(1,99)]);
plot(impulse)

%Q.3) b
num2 = [0.03 -0.02 0.01];
den2 = [ 1 -2.8 3.02 -1.468 0.27];
H2 = tf(num2,den2,-1,'variable','z^-1');
%freqz(num2,den2,1000,10)
zplane(num2,den2)
[p2,z2] = pzmap(H2)
step = filter(num2,den2,[ones(1,100)]);
plot(5*step)
  