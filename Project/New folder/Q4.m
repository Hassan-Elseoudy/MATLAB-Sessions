6% Q.4) a
x1 = stepseq(0,0,10) - stepseq(6,0,10);
X1 = fft(x1);
stem(abs(X1));
stem(angle(X1));

% Q.4) b
n2 = [0:10];
x21 = 2 .^ n2;
[x22,n22] = stepseq(0,0,10);
[x22,n22] = sigfold(x22,n22);
[x2,n2] = sigmult(x21,n2,x22,n22);
X2 = fft(x2);
stem(abs(X2));
stem(angle(X2));

% Q.4) c
n31 = [0:10];
x31 = 0.25 .^ n31;
[x32,n32] = stepseq(0,0,10);
[x3,n3] = sigmult(x31,n31,x32,n32);
X3 = fft(x3);
stem(abs(X3));
stem(angle(X3));

% Q.4) d
n4 = [0:10];
[x41,n41] = stepseq(0,0,10);
x42 = 0.25 .^ n4;
x43 = sin(2*pi*0.25*n4);
[x4,n4] = sigmult(x42,n4,x43,n4);
[x4,n4] = sigmult(x4,n4,x41,n41);
X4 = fft(x4);
stem(abs(X4));
stem(angle(X4));

% Q.4) e
n5 = [0:10];
x52 = 0.5 .^ n5;
x53 = sin(2*pi*0.25*n5);
[x5,n5] = sigmult(x52,n5,x53,n5);
X5 = fft(x5);
stem(abs(X5))
stem(angle(X5))

% Q.4) f
n6 = [-4:4];
x6 = 2 - 0.5*n6;
X6 = fft(x6);
stem(abs(X6));
stem(angle(X6));

% Q.4) g
n7 = [-2:2];
x7 = [-2 -1 0 1 2];
X7 = fft(x7);
stem(abs(X7));
stem(angle(X7));