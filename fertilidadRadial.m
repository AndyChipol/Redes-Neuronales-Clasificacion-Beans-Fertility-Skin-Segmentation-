function fertilidadRadial
XA = load('Fertilidad\fertilidadA.txt');
[m,n] = size(XA);
X = XA(:,1:9)'; t=XA(:,10)';
RN = newrb(X,t,0.1,1.0,m,50);
Y = sim(RN,X);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentaje = (ac/m)*100

save fertiRadialTrain RN
save fertiRadialPorcentaje porcentaje