function [outputArg1,outputArg2] = Triangles(pionG,pionD,pozL,pozP, n)
% komentarze

x = linspace(pozL,pozP, n);
y = linspace(pionG,pionD, n);

[X,Y] = meshgrid(x,y);
cords = complex(X,Y);
p0 = cords(2:n, 1:(n-1));
p1 = cords(1:(n-1), 1:(n-1));
p2 = cords(2:n, 2:n);
p4 = cords(1:(n-1), 2:n);
end

