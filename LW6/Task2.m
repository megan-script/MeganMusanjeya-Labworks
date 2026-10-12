clc;
clear;
close all;

global x y

x = 2*pi:-0.2:-2*pi;

calculate_y

figure;
plot(x, y, 'k-.+', 'LineWidth', 1.5);
xlabel('x (radians)');
ylabel('y(x)');
title('Piecewise Sine Function - Variant 7');
grid on;

whos global
