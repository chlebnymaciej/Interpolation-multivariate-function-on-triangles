function [interpolatedValue] = ...
         InterpolationByTriangle(f0, f1, f2, f3, f4, f5, ...
                                 p0, p1, p2, interpolationPoint)
% komentarze
[ksi0, ksi1, ksi2, ksi3, ksi4, ksi5] = ...
         KsiFunctions(p2, p1, p0, interpolationPoint);
     
dataToSum = [f0, f1, f2, f3, f4, f5].*[ksi0, ksi1, ksi2, ksi3, ksi4, ksi5];

% interpolatedValue = sum(dataToSum, 2);
interpolatedValue = f0.*ksi0+f1.*ksi1+f2.*ksi2+f3.*ksi3+f4.*ksi4+f5.*ksi5;
end

