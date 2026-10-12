% Modestas Jasiunas 8 variantas
%1.
figure(1)
[x, y] = meshgrid(-2:0.1:2);
f_xy = sin(abs(x+y)/20).*exp(-abs(x+y));
surf(x, y, f_xy)
colormap("hot");
shading interp;
view(90, 45);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = sin(|x+y|/20) · e^{-|x+y|}');
figure(2)
theta = linspace(0, 2*pi, 50);
r = linspace(0, 1, 30);
[Theta, R] = meshgrid(theta, r);
x = R .* cos(Theta);
y = R .* sin(Theta);
f_xy2 = 1 - 2*x.^2 - 3*y.^2;
surf(x,y,f_xy2)
colormap("parula");
shading interp;
view(45,30);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = 1 - 2x^2 - 3y^2');
%Papildoma
[x, y] = meshgrid(-1.5:0.1:1.5);
z_xy = 1 -(x.^2+y.^2);
figure(3)
surf(x, y, z_xy)
colormap("jet");
shading interp;
camlight("headlight")
lighting gouraud;
xlabel('x'); ylabel('y'); zlabel('z')
title('a) Surface with camlight')
figure(4)
surfc(x, y, z_xy)
colormap("summer")
shading interp
xlabel('x'); ylabel('y'); zlabel('z')
title('b) Surface with contour')
figure(5)
surf(x, y, z_xy)
colormap(jet)
shading interp
xlabel('x'); ylabel('y'); zlabel('z')
title('c) Simple surface')