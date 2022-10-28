function diabetesRadial
XA = load('Diabetes\diabetesA.txt')
[m,n] = size(XA);
X = XA(:,1:19)'; t=XA(:,20)';
RN = newrb(X,t,0.0,1,m,20);
Y = sim(RN,X);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentaje = (ac/m)*100


save diaRadialTrain RN
save diaRadialPorcentaje porcentaje