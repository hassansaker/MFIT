clear ;
close all;

lb=[0.01 0.01];
ub=[pi/2 pi/2];
nvar=2;
%[x,fval]=ga(@Fitness,nvar);
options=optimoptions("ga","Display","iter","plotFcn",["gaplotbestf","gaplotbestindiv"]);
[solution,objectiveValue]=ga(@Fitness,nvar,[],[],[],[],lb,ub,[],[],options);
%solution=optimresults.x;
f1=0.9*10^9;
f2=3.5*10^9;
f3=5.2*10^9;
El1=solution(1)*(180/pi);
El2=solution(2)*(180/pi);
Bt1=[-0.0278 0.0406 -0.0583];
Bt2=[-0.0101 0.0643 -0.0141];

x=solution;


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

Zs1=1/Ys1;
Zs2=1/Ys2;

