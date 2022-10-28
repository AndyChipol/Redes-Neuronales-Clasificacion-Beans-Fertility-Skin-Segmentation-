function diaProbabilistica
XA = load('Diabetes\diabetesA.txt')
[m,n] = size(XA);
X = XA(:,1:19)'; t=XA(:,20)';
t = t + 1;
tt = ind2vec(t);
RN = newpnn(X,tt,17.8);
Ya = sim(RN,X);
Y = vec2ind(Ya);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentaje = (ac/m)*100


save diabetesProTrain RN
save diabetesProTrainPorciernto porcentaje