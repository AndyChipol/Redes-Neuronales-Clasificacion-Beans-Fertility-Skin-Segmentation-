function fertProPrueba
XA = load('Fertilidad\fertilidadB.txt');
[m,n] = size(XA);
X = XA(:,1:9)'; t=XA(:,10)';
load fertiProTrain.mat
Ya = sim(RNp,X);
Y = vec2ind(Ya);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentaje = (ac/m)*100

save fertiProTrainPorcentajePrueba porcentaje