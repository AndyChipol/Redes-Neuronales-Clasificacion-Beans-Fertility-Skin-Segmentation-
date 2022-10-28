function skinProba
XA = load('Skins\A.txt');
[m,n] = size(XA);
X = XA(:,1:3)'; t=XA(:,4)';
t = t + 1;
tt = ind2vec(t);
RNp = newpnn(X,tt,0.1);
Ya = sim(RNp,X);
Y = vec2ind(Ya);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentaje = (ac/m)*100

save skinProTrain RNp
save skinProTrainPorcentaje porcentaje