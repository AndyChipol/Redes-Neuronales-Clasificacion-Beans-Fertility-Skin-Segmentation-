function fertilidadRadial
XA = load('Skins\A - copia.txt')
[m,n] = size(XA);
X = XA(:,1:3)'; t=XA(:,4)';
RN = newrb(X,t,0.0,1.0,2100,50);
Y = sim(RN,X);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentaje = (ac/m)*100

save skinRadialTrain RN
save skinRadialPorcentaje porcentaje