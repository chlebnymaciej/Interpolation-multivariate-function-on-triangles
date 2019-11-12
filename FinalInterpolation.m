function [T, maxError] = FinalInterpolation(fun, pionG, pionD, pozL, pozP, n)
% komentarze
[point0, point1, point2] = Triangles(pionG, pionD, pozL, pozP, n);
[point01, point02, point12] = TrianglesAdd3Points(point0, point1, point2);
interpolationPoint = TriangleCenter(point0, point1, point2);

f0 = fun(point0(:,1),point0(:,2));
f1 = fun(point1(:,1),point1(:,2));
f2 = fun(point2(:,1),point2(:,2));
f3 = fun(point01(:,1),point01(:,2));
f4 = fun(point02(:,1),point02(:,2));
f5 = fun(point12(:,1),point12(:,2));

realValue = fun(interpolationPoint(:,1), interpolationPoint(:,2)); 

interpolatedValue = InterpolationByTriangle(f0, f1, f2, f3, f4, f5, ...
                    point0, point1, point2, interpolationPoint);
%zrobic error
errors = abs(realValue - interpolatedValue);

T = table(interpolationPoint, realValue, interpolatedValue, errors);
T.Properties.VariableNames = {'Point' 'Value'...
                              'Interpolated' 'Error'};
maxError = max(errors);
end
