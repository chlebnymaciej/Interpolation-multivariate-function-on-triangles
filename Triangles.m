function [points0, points1, points2] = ...
         Triangles(pionG, pionD, pozL, pozP, t)
% komentarze
% Autor: Maciej Chlebny
% Funkcja zwraca wektory z punktami dla 2n^2 trójkątów
% Parametry wejściowe:
%   pionG, pionD - odpowiednio górna i dolna granica przedziału na "y"
%   pozL, pozP - odpowiednio lewa i prawa granica przedziału na "x"
%   t - liczba na ile podzielić trójkątów zadany obszar
% UWAGA !!! t da nam tak naprawdę 2t^2 trójkątów

% równomierne rozłożenie n pukjtów na przedziałach
n = t+1;
x = linspace(pozL,pozP, n);
y = linspace(pionG,pionD, n);

% siatka punktów zespolonych, skraca kod, x = część rzeczywista, y = część urojona 
[X,Y] = meshgrid(x,y);
cords = complex(X,Y);
p0 = cords(2:n, 1:(n-1));
p1 = cords(1:(n-1), 1:(n-1));
p2 = cords(2:n, 2:n);
p4 = cords(1:(n-1), 2:n);

p0 = reshape(p0,[],1);
p1 = reshape(p1,[],1);
p2 = reshape(p2,[],1);
p4 = reshape(p4,[],1);

p0 = [real(p0), imag(p0)];
p1 = [real(p1), imag(p1)];
p2 = [real(p2), imag(p2)];
p4 = [real(p4), imag(p4)];

points0 = [p0; p4];
points1 = [p1; p1];
points2 = [p2; p2];
end

