clear all;
close all;

lb=[0.005 0.1];
ub=[0.1 pi];
nvar=2;
%[x,fval]=ga(@Fitness,nvar);
options=optimoptions("ga","Display","iter","plotFcn",["gaplotbestf","gaplotbestindiv"]);
[solution,objectiveValue]=ga(@Fitness,nvar,[],[],[],[],lb,ub,[],[],options);
Z0=1/solution(1);
El=solution(2)*(180/pi);