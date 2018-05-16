% Q.a) 1.
n1 = [-12:12];
x1 = [-2,-1,0,1,2];
xQ1 = [x1,x1,x1,x1,x1];
stem(n1,xQ1,'--');

% Q.a) 2.
n2 = [-22:43];
x2 = exp(0.1*[0:21]).*(stepseq(0,0,21)-stepseq(20,0,21)); %ends @ 21
xQ2 = [x2,x2,x2];
stem(n2,xQ2,'--');

% Q.a) 3.
n3 = [-12:35];
x3 = sin(0.1*pi*[0:11]).*(stepseq(0,0,11)-stepseq(10,0,11)); %ends @ 11
xQ3 = [x3,x3,x3,x3];
stem(n3,xQ3,'--');

% Q.a) 4.
n4 = [0:24];
x4a1 = [1 2 3];
x4a = [x4a1 x4a1 x4a1 x4a1 x4a1 x4a1 x4a1 x4a1 x4a1];
x4b1 = [1 2 3 4];
x4b = [x4b1 x4b1 x4b1 x4b1 x4b1 x4b1 x4b1];
xQ4 = x4a(1:25) + x4b(1:25);
stem(n4,xQ4,'--');

%-----------------------------------------------------------------------
n= [-3:3];
x = [2,4,-3,1,-5,4,7];

%Q.b)1
[x11,n11] = sigshift(x,n,3);
[x12,n12] = sigshift(x,n,-4);
[x13,n13] = sigadd(2*x11,n11,3*x12,n12);
[xQ1b,n1b] = sigadd(x13,n13,-x,n);
stem(n1b,xQ1b,'-.');

%Q.b)2
[x21,n21] = sigshift(x,n,-4);
[x22,n22] = sigshift(x,n,-5);
[x23,n23] = sigadd(4*x21,n21,5*x22,n22);
[xQ2b,n2b] = sigadd(x23,n23,2*x,n);
stem(n2b,xQ2b,'-.');

%Q.b)3
[x31,n31] = sigshift(x,n,-3);
[x32,n32] = sigshift(x,n,+2);
[x33,n33] = sigshift(x,n,-1);
[x34,n34] = sigfold(x33,n33);
[x35,n35] = sigshift(x,n,-1);
[x31b,n31b] = sigmult(x31,n31,x32,n32);
[x32b,n32b] = sigmult(x34,n34,x35,n35);
[xQ3b,n3b] =sigadd(x31b,n31b,x32b,n32b);
stem(n3b,xQ3b,'-.');

%Q.b)4 
n4 = [-10:10]; 
x41 = 2*exp(0.5*n4); 
x412 = cos(0.1*pi*n4);
[x42,n42] = sigmult(x41,n4,x,n);
[x43,n43] = sigshift(x,n,-2);
[x44,n44] = sigmult(x412,n42,x43,n43);
[xQ4b,n4b] = sigadd(x42,n42,x44,n44);
stem(n4b,xQ4b,'-.');

%-----------------------------------------------------------------------