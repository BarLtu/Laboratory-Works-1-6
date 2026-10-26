clear; clc
global x z
x = 0:0.1:20;
kvadratas
plot(x, z, 'b-.o')
grid on
xlabel('x'), ylabel('y/2')
title('y = x^2 / 2')
whos global