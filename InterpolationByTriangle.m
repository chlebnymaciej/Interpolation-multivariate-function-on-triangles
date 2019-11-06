function [outputArg1,outputArg2] = ...
         InterpolationByTriangle(inputArg1,inputArg2)
% komentarze
[ksi0, ksi1, ksi2, ksi3, ksi4, ksi5] = ...
         KsiFunctions(y2,y1,y0,x2,x1,x0,x,y);
dataToSum = [f0, f1, f2, f3, f4, f5].*[ksi0, ksi1, ksi2, ksi3, ksi4, ksi5];
inter = sum(dataToSum);

end

