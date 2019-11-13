function [p01, p02, p12] = TrianglesAdd3Points(p0, p1, p2)
% Autor: Maciej Chlebny
% Funkcja zwraca 3 dodatkowe wektory punktów, do interpolacji bikwadratowej

p01 = (p0+p1)./2;
p02 = (p0+p2)./2;
p12 = (p1+p2)./2;
end

