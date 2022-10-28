function beansRadialPrueba
XA = load('Frijoles\frijolesB.txt')
[m,n] = size(XA);
X = XA(:,1:16)'; t=XA(:,17)';
load beansRadialTrain.mat
Y = sim(RN,X);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentajePrueba = (ac/m)*100


save beansRadialPorcentajePrueba porcentajePrueba