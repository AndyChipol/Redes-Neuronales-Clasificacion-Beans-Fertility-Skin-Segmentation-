function beansRadial
XA = load('Frijoles\frijolesA.txt')
[m,n] = size(XA);
X = XA(:,1:16)'; t=XA(:,17)';
RN = newrb(X,t,0.0,1.0,1400,50);
Y = sim(RN,X);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentaje = (ac/m)*100

save beansRadialTrain RN
save beansRadialPorcentaje porcentaje