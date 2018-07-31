% Tarea #8 Daniel Aleman saborio 
clear all
clc
G=tf([1],[1 10 24])
GC=feedback(G,1)
num=[11.53]
den=[1 10 24]
%Respuesta a un escalon 
c=tf([num],[1])
H=series(c,G)
FC=feedback(H,1)
step(FC)
grid
title('Curva ante un escalon')