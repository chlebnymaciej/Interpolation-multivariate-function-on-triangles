function [center] = TriangleCenter(p0, p1, p2)
% Autor: Maciej Chlebny
% Zwraca środek ciężkości trójkąta

center = (p0+p1+p2)./3;
end