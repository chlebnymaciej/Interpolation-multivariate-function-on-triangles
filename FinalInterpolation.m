function [T, maxError] = FinalInterpolation(fun, pionG, pionD, pozL, pozP, n)
% Autor: Maciej Chlebny
% Funkcja służy do interpolacji funkcji wieluzmiennych na zadanym kwadracie podzielonym na 2n^2 trójkątów.
% Interpolacja wykonuje się na trójkątach przystających funkcjami bikwadratowymi.
% Argumenty wyjściowe: 
%   T - tabela z tablicowaniem funkcji {Punkt, Wartość rzeczywista, Wartość przybliżona, Błąd}
%   maxError - maksymalny błąd interpolacji 
% Parametry wejściowe:
%   fun - handler do interpolowanej funkcji
%   pionG, pionD - odpowiednio górna i dolna granica przedziału na "y"
%   pozL, pozP - odpowiednio lewa i prawa granica przedziału na "x"
%   n - liczba na ile podzielić trójkątów zadany obszar
% UWAGA !!! n da nam tak naprawdę 2n^2 trójkątów
% Przykładowe wywołania:

% punkty do interpolacji na trójkącie
[point0, point1, point2] = Triangles(pionG, pionD, pozL, pozP, n);
[point01, point02, point12] = TrianglesAdd3Points(point0, point1, point2);

% punkt interpolacji
interpolationPoint = TriangleCenter(point0, point1, point2);

% wartości węzłów
f0 = fun(point0(:,1),point0(:,2));
f1 = fun(point1(:,1),point1(:,2));
f2 = fun(point2(:,1),point2(:,2));
f3 = fun(point01(:,1),point01(:,2));
f4 = fun(point02(:,1),point02(:,2));
f5 = fun(point12(:,1),point12(:,2));

% wartość rzeczywista
realValue = fun(interpolationPoint(:,1), interpolationPoint(:,2)); 

% wartość interpolacji
interpolatedValue = InterpolationByTriangle(f0, f1, f2, f3, f4, f5, ...
                    point0, point1, point2, interpolationPoint);
% błąd interpolacji
errors = abs(realValue - interpolatedValue);

% tablicowanie
T = table(interpolationPoint, realValue, interpolatedValue, errors);
T.Properties.VariableNames = {'Point' 'Value'...
                              'Interpolated' 'Error'};
% maksymalny bład interpolacji
maxError = max(errors);
end

