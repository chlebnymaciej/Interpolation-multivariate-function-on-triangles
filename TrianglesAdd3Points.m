function [p01, p02, p12, p14, p24] = TrianglesAdd3Points(p0,p1,p2,p4)
% Autor: Maciej Chlebny
% Functions that creates additional 3 points to biquadratic interpolation
% for 2n^2 triangles on square
% These points are centers of sides of triangles

p01 = (p0+p1)./2;
p02 = (p0+p2)./2;
p12 = (p1+p2)./2;
p14 = (p1+p4)./2;
p24 = (p2+p4)./2;
end

