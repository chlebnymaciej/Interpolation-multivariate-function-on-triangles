function [fi0, fi1, fi2] = FiFunctions(y2,y1,y0,x2,x1,x0,x,y)
% komentarz

d = (x1-x2).*(y0-y2)-(y1-y2).*(x0-x2);

fi0 = [(y2-y1), (x1-x2)].*[x,y];
fi0 = (sum(fi0,2)+(x2.*y1-y2.*x1))./d;
fi1 = [(y0-y1), (x2-x0)].*[x,y];
fi1 = (sum(fi1,2)+(x0.*y2-y0.*x2))./d;

fi2 = [(y1-y0), (x0-x1)].*[x,y];
fi2 = (sum(fi2,2)+(x1.*y0-y1.*x0))./d;
end

