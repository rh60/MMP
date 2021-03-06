clear;clc;close;
ff=fullfile(pwd,'CsLib.dll');
a=NET.addAssembly(ff);
bs=MMP.BSpline([0, 0, 0, 1, 2, 3, 4, 4, 5, 5, 5]);
bs.N=50;
pp=bs.Bases();
hold on
for i=1:pp.Count
   n=pp.Item(i-1).Count;
   x=zeros(1,n);
   y=x;
   for j=1:n
       p=pp.Item(i-1).Item(j-1);
       x(j)=p.x;
       y(j)=p.y;       
   end
   plot(x,y);
   legends{i}=['N_{2,' int2str(i-1) '}'];
end
legend(legends);
axis equal
axis tight
matlab2tikz('fig.tex')





