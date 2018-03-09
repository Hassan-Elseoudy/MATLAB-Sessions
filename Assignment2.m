%Hassan Elseoudy
%ID : 3780
%G4 S1

% Question (1) %
t = linspace(-2,3,500);
t1 = linspace(-2,0,200);
x1 = 4*ones(1,200);
t2 = linspace (0,1,100);
x2 = cos(2*pi*t2/4)+3;
t3 = linspace(1,3,200);
x3 = 3*ones(1,200);
Y = [x1 x2 x3];
plot (t,Y,'g')

% Question (2) %
 n = linspace(0,20,10);
 N = 2*n;
 x = cos(2 * n / 3);
 y = cos(8 * pi * n /38);
 stem(x,N);
hold on 
stem(y,N);

%They're periodic (Math calculation, how to get it from matlab?)
