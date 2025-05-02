function [fit] = Fitness(x)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
f1=1*10^9;
f2=3.3*10^9;
Z0=50;
Gl1=0.0214613;
Bl1=0.032058;
Gl2=0.01065;
Bl2=-0.00808;
[Bt1, Bt2]=Calc(f1,f2,Z0,Gl1,Gl2,Bl1,Bl2);
Bs1(1)=-x(1)*cot(x(2));
Bs1(2)=-x(1)*cot((f2/f1)*x(2));
fit=abs(Bs1(1)-Bt2(1))+abs(Bs1(2)-Bt2(2));
end

