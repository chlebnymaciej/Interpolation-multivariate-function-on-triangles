function [fi0, fi1, fi2] = FiFunctions(p2, p1, p0, interpolationPoint)
% (y2, y1, y0, x2, x1, x0, x, y)
% komentarz
y2 = p2(:,2);
y1 = p1(:,2);
y0 = p0(:,2);
y = interpolationPoint(:,2);

x2 = p2(:,1);
x1 = p1(:,1);
x0 = p0(:,1); 
x = interpolationPoint(:,1);

d = (x1-x2).*(y0-y2)-(y1-y2).*(x0-x2);

fi0 = [(y2-y1), (x1-x2)].*[x,y];
fi0 = (sum(fi0,2)+(x2.*y1-y2.*x1))./d;
fi1 = [(y0-y2), (x2-x0)].*[x,y];
fi1 = (sum(fi1,2)+(x0.*y2-y0.*x2))./d;

fi2 = [(y1-y0), (x0-x1)].*[x,y];
fi2 = (sum(fi2,2)+(x1.*y0-y1.*x0))./d;
end