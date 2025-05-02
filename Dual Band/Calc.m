function [bt1,bt2] = Calc(f1,f2,Z0,gl1,gl2,bl1,bl2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
teta1=(pi/2)*(f1/f2);
teta2=pi/2;
Z011=sqrt(1/(gl1*(1/Z0)*(sin(teta1))^2));
Z012=sqrt(1/(gl2*(1/Z0)*(sin(teta2))^2));
Z01=min(Z011,Z012);
Bc1=cot(teta1)/Z01;
Bc2=cot(teta2)/Z01;
B11=-sqrt((gl1/((Z01^2)*(1/Z0)*(sin(teta1))^2))-gl1^2)-bl1;
B12=-sqrt((gl2/((Z01^2)*(1/Z0)*(sin(teta2))^2))-gl2^2)-bl2;
B21=-sqrt((1/(gl1*(Z01^2)*(1/Z0)*(sin(teta1))^2))-1)*(1/Z0);
B22=-sqrt((1/(gl2*(Z01^2)*(1/Z0)*(sin(teta2))^2))-1)*(1/Z0);
bt11=Bc1+B11;
bt12=Bc2+B12;
bt21=Bc1+B21;
bt22=Bc2+B22;
bt1=[bt11 bt12];
bt2=[bt21 bt22];
end

