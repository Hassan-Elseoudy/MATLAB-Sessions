 % Hassan El-seoudy
 % ID : 3780
 % GP4 : S1 "Odd"
 
 % Generate the following sequence: V=1 4 9 16 25 ………………………………… 16 9 4 %
v = zeros(1,49);
for i = 1:1:25
    v(i) = (i*i);
    if (i >= 25)
        for j = 24 : -1 : 1
            i++;
            v(i) = (j*j);
        end
    end
end
disp(v)

%  Add 2 to the last 3 elements. %
v ([end-2 end-1 end]) = [v(end-2)+2 v(end-1)+2 v(end)+2];

% Reverse the order of the last 10 elements. %
    count = 0;
for i = 39:1:44
    temp = v(i);
    v(i) = v(end - count);
    v(end - count) = temp;
    count+= 1;
    end
disp(v)

% For the first 48 elements, add the elements in the even places to that in 
% the odd places and store the output in the odd places.

for i = 1:2:48
v(i) += v(i+1);
end

m = [1 2 3 4;-1 -2 -3 -4;1 2 3 4;-1 -2 -3 -4];
disp(m)
% Reflect  array (M) left-side right %
m = fliplr(m);
disp (m)

m = [1 2 3 4;-1 -2 -3 -4;1 2 3 4;-1 -2 -3 -4];
disp(m)
% Reflect  array (M) upside down %
m = flipud(m);
disp (m)

m = [1 2 3 4;-1 -2 -3 -4;1 2 3 4;-1 -2 -3 -4];
disp(m)
% Swap columns 2 and 3 of array (M) %
x = zeros(4,1);
x = m ([1 2 3 4],2);
m ([1 2 3 4],2) = m ([1 2 3 4],3);
m ([1 2 3 4],3) = x;
disp(m)

m = [1 2 3 4;-1 -2 -3 -4;1 2 3 4;-1 -2 -3 -4];
disp(m)
% Swap rows 1 and 4 of array (M) %
x = zeros(1,4);
x = m (1,[1 2 3 4]);
m (1,[1 2 3 4]) = m (4,[1 2 3 4]);
m (4,[1 2 3 4]) = x;
disp(m)

m = [1 2 3 4;-1 -2 -3 -4;1 2 3 4;-1 -2 -3 -4];
% Shuffle the rows of (M) from [1 2 3 4] to [1 3 4 2]  %
m_new ([1 2 3 4],:) = m([1 3 4 2],:);
m = m_new;
disp(m)

m = [1 2 3 4;-1 -2 -3 -4;1 2 3 4;-1 -2 -3 -4];
% shuffle the columns of (M) from [1 2 3 4] to [3 2 4 1]. %
m_new (:,[1 2 3 4]) = m(:,[3 2 4 1]);
m = m_new;
disp(m)




