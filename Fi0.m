function [outputArg1,outputArg2] = Fi0(y2,y1,y0,x2,x1,x0,x,y)
% komentarz

d = (x1-x2).*(y0-y2)-(y1-y2).*(x0-x2);

fi0 = [(y2-y1), (x1-x2)].*[x,y];
fi0 = (sum(fi0,2)+(x2.*y1-y2.*x1))./d;
%to do
fi1 = [(y2-y1), (x1-x2)].*[x,y];
fi1 = (sum(fi1,2)+(x2.*y1-y2.*x1))./d;

fi0 = [(y2-y1), (x1-x2)].*[x,y];
fi0 = (sum(fi,2)+(x2.*y1-y2.*x1))./d;
end

