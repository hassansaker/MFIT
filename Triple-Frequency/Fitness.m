function [fit] = Fitness(x)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
f1=0.9*10^9;
f2=3.5*10^9;
f3=5.2*10^9;
Z0=50;
Gl1=0.0183;
Bl1=0.0278;
Gl2=0.0101;
Bl2=-0.0027;
Gl3=0.0852;
Bl3=0.0442;
[Bt1, Bt2]=Calc(f1,f2,f3,Z0,Gl1,Gl2,Gl3,Bl1,Bl2,Bl3);

% % short short
% Ys1=(  Bt1(1)*cot(x(2)*(f2/f1))- Bt1(2)*cot(x(2)) )/...
%     ( -cot(x(1))*cot(x(2)*(f2/f1))+ cot(x(1)*(f2/f1))*cot(x(2)) );
% Ys2=(  Bt1(1)*cot(x(1)*(f2/f1)) - Bt1(2)*cot(x(1)) )/...
%     ( -cot(x(2))*cot(x(1)*(f2/f1))+cot(x(2)*(f2/f1))*cot(x(1)) );

% open short
Ys1=(  Bt2(1)*cot(x(2)*f2/f1)- Bt2(2)*cot(x(2)) )/...
    ( tan(x(1))*cot(x(2)*f2/f1)- tan(x(1)*f2/f1)*cot(x(2)) );
Ys2=(  Bt2(1)*tan(x(1)*f2/f1)- Bt2(2)*tan(x(1)) )/...
    ( -cot(x(2))*tan(x(1)*f2/f1)+cot(x(2)*f2/f1)*tan(x(1)) );

Bs1=-Ys1*tan(x(1)*(f3/f1));
Bs2=Ys2*cot(x(2)*(f3/f1));
fit=abs(Bt2(3)+Bs1+Bs2);
end

