%Hassan Elseoudy ID:3780 G4:S1 

n = (-4:2);
x = [1,-2,4,6,-5,8,10];
[t1,s1] = sigshift(x,n,-2);
[t2,s2] = sigshift(x,n,4);
[t3,s3] = sigadd(3*t1,s1,t2,s2);
[x1,n1] = sigadd(t3,s3,2*x,n);
stem(x1,n1,'r');
%---------------
[y1,z1] = sigshift(x,n,-4);
[y2,z2] = sigshift(x,n,1);
[y3,z3] = sigfold(t1,s1);
[y4,z4] = sigmult(y1,z1,y2,z2);
[y5,z5] = sigmult(t1,s1,x,n);
[x2,n2] = sigadd(y4,z4,y5,z5);
stem(x2,n2,'r');
%---------------
N = (0:25);
a = (N).^2.*[stepseq(0,0,25)-stepseq(6,0,25)];
s = 10 * impseq(0,0,25);
d = 10*(.5).^N.*[stepseq(4,0,25)-stepseq(10,0,25)];
X = sigadd(a,N,s,N);
Y = sigadd(X,N,d,N);
stem(Y,N,'r')
%---------------
t = [-2:1/100:3];
zero1 = zeros(1,100);
time1 = linspace(-1,0,100);
u = -sin(2*pi*time1*0.25+0.5*pi)+1;
u1 = -stepseq(0,-2,500);
time2 = linspace(0,1,100);
u2 = (time2-1);
zero2 = ones(1,100)-1;
u3 = stepseq(2,2,3);
U = [zero1 u u2 u1 zero2 u3];
plot(U)