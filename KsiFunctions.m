function [ksi0, ksi1, ksi2, ksi3, ksi4, ksi5] = ...
         KsiFunctions(y2,y1,y0,x2,x1,x0,x,y)
% Autor: Maciej Chlebny
% Function that returns ksi-functions for (x,y)
% Equations from lecture
[fi0, fi1, fi2] = FiFunctions(y2,y1,y0,x2,x1,x0,x,y);

ksi0 = fi0.*(fi0.*2-1);
ksi1 = fi1.*(fi1.*2-1);
ksi2 = fi2.*(fi2.*2-1);

ksi3 = (fi0.*4).*fi1;
ksi4 = (fi0.*4).*fi2;
ksi5 = (fi1.*4).*fi2;
end
