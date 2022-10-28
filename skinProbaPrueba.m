function skinProbaPrueba
XA = load('Skins\skinB.txt');
[m,n] = size(XA);
X = XA(:,1:3)'; t=XA(:,4)';
t = t + 1;
tt = ind2vec(t);
load skinProTrain.mat
Ya = sim(RNp,X);
Y = vec2ind(Ya);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentajePrueba = (ac/m)*100

save skinProTrainPorcentajePrueba porcentajePrueba