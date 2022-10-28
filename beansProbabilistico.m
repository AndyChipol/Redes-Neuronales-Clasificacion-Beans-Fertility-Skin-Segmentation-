function beansProba
XA = load('Frijoles\frijolesA.txt')
[m,n] = size(XA);
X = XA(:,1:16)'; t=XA(:,17)';
t = t + 1;
tt = ind2vec(t);
RN = newpnn(X,tt,0.001);
Ya = sim(RN,X);
Y = vec2ind(Ya);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentaje = (ac/m)*100

save beansProbaTrain RN
save beansProbaPorci porcentaje