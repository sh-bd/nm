clc;
clear all;
close all;

x=3.8;

x1=3.1;
fx1=1.119;

x2=4.1;
fx2=1.145;

fx=fx1+((x-x1)*(fx2-fx1))/(x2-x1);
fprintf('%f\n',fx);