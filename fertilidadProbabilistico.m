function fertProba
XA = load('Fertilidad\fertilidadA.txt');
[m,n] = size(XA);
X = XA(:,1:9)'; t=XA(:,10)';
t = t + 1;
tt = ind2vec(t);
RNp = newpnn(X,tt,0.001);
Ya = sim(RNp,X);
Y = vec2ind(Ya);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentaje = (ac/m)*100

save fertiProTrain RNp
save fertiProTrainPorcentaje porcentaje