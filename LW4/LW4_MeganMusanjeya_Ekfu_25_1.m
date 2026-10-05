clear; clc; close all;

%Name: Megan
%Surname: Musanjeya
%Group: Ekfu-25/1
%Date: 02/10/2026

x = linspace(-1, 1, 60);
y = linspace(-1, 1, 60);
[X, Y] = meshgrid(x, y);

R = sqrt(X.^2 + Y.^2);
Z = exp(R.^2);

figure;
surf(X, Y, Z);

base = [0.1 0.5 0.8];                    
colormap(base .* linspace(0.3, 1, 64)');
shading interp;                          

view(30, 30);                            

xlabel('x'); ylabel('y'); zlabel('z');
title('z(r) = e^{r^2}, r = \surd(x^2 + y^2)');
grid on;


x = linspace(-4, 2, 60);
y = linspace(-4, 2, 60);
[X, Y] = meshgrid(x, y);

F = 1 - 2*X.^2 - 3*Y.^2;

figure;
surf(X, Y, F);

base = [0.8 0.3 0.2];                    
colormap(base .* linspace(0.3, 1, 64)');
shading interp;

view(45, 30);                            

xlabel('x'); ylabel('y'); zlabel('f(x,y)');
title('f(x,y) = 1 - 2x^2 - 3y^2');
grid on;

%complementary task
x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);
[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

figure;

subplot(1,3,1);
surf(X, Y, Z);
shading faceted;                 
title('shading faceted');
xlabel('x'); ylabel('y'); zlabel('z');
view(30, 30); grid on;

subplot(1,3,2);
surf(X, Y, Z);
shading flat;                    
title('shading flat');
xlabel('x'); ylabel('y'); zlabel('z');
view(30, 30); grid on;

subplot(1,3,3);
surf(X, Y, Z);
shading interp;                  
title('shading interp');
xlabel('x'); ylabel('y'); zlabel('z');
view(30, 30); grid on;
