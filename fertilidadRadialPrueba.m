function fertilidadRadialPrueba
XA = load('Fertilidad\fertilidadB.txt');
[m,n] = size(XA);
X = XA(:,1:9)'; t=XA(:,10)';
load fertiRadialTrain.mat;
Y = sim(RN,X);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentajePrueba = (ac/m)*100

save fertiRadialPruebaPorcentaje porcentajePrueba