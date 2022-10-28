function fertilidadRadial
XA = load('Skins\skinB.txt')
[m,n] = size(XA);
X = XA(:,1:3)'; t=XA(:,4)';
load skinRadialTrain.mat
Y = sim(RN,X);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentajePrueba = (ac/m)*100

save skinRadialPorcentajePrueba porcentajePrueba