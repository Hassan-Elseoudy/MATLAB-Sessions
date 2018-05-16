%Q2.i
x1 = [1,2,4];
nx = [0:2];
h1=[1,1,1,1,1];
nh= [-2:2];
[y,ny] = conv_m(x1,nx,h1,nh);
stem(ny,y);

%Q2.ii
x2 = [0,1,-2,3,-4];
nx2 = [0:4];
h2 = [0.5,1,2,1,0.5]; 
nh2 = [-2:2];
[y2,ny2] = conv_m(x2,nx2,h2,nh2);
stem(ny2,y2);

%Q2.iii
x3 = [1,2,3,4];
nx3 = [0:3];
h3 = [4,3,2,1]; 
nh3= [0:3];
[y3,ny3] = conv_m(x3,nx3,h3,nh3);
stem(ny3,y3);

%Q2.iv
x4 = [1,2,3,4];
nx4 = [0:3];
h4 = [1,2,3,4]; 
nh4 = [0:3];
[y4,ny4] = conv_m(x4,nx4,h4,nh4);
stem(ny4,y4);
