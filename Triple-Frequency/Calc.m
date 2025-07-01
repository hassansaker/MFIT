function [bt1,bt2] = Calc(f1,f2,f3,Z0,Gl1,Gl2,Gl3,Bl1,Bl2,Bl3)
%UNTITLED Summary of this function goes here
% Detailed explanation goes here
teta1=(11/18)*pi*(f1/f3);
teta2=(11/18)*pi*(f2/f3);
teta3=(11/18)*pi;
Z011=sqrt(1/(Gl1*(1/Z0)*(sin(teta1))^2));
Z012=sqrt(1/(Gl2*(1/Z0)*(sin(teta2))^2));
Z013=sqrt(1/(Gl3*(1/Z0)*(sin(teta3))^2));
Z01=min([Z011,Z012,Z013]);
Bc1=cot(teta1)/Z01;
Bc2=cot(teta2)/Z01;
Bc3=cot(teta3)/Z01;
B11=-sqrt((Gl1/((Z01^2)*(1/Z0)*(sin(teta1))^2))-Gl1^2)-Bl1;
B12=sqrt((Gl2/((Z01^2)*(1/Z0)*(sin(teta2))^2))-Gl2^2)-Bl2;
B13=-sqrt((Gl3/((Z01^2)*(1/Z0)*(sin(teta3))^2))-Gl3^2)-Bl3;
B21=-sqrt((1/(Gl1*(Z01^2)*(1/Z0)*(sin(teta1))^2))-1)*(1/Z0);
B22=sqrt((1/(Gl2*(Z01^2)*(1/Z0)*(sin(teta2))^2))-1)*(1/Z0);
B23=-sqrt((1/(Gl3*(Z01^2)*(1/Z0)*(sin(teta3))^2))-1)*(1/Z0);
bt11=Bc1+B11;
bt12=Bc2+B12;
bt13=Bc3+B13;
bt21=Bc1+B21;
bt22=Bc2+B22;
bt23=Bc3+B23;
bt1=[bt11 bt12 bt13];
bt2=[bt21 bt22 bt23];
end

