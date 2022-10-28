function diabetesPruebaProba
XA = load('Diabetes\diabetesB.txt')
[m,n] = size(XA);
X = XA(:,1:19)'; t=XA(:,20)';
t = t + 1;
tt = ind2vec(t);
load diabetesProTrain.mat
Ya = sim(RN,X);
Y = vec2ind(Ya);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentajePrueba = (ac/m)*100



save diabPruebasPorciento porcentajePrueba