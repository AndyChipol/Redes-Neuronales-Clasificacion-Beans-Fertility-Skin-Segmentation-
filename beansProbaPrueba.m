function beansProbaPrueba
XA = load('Frijoles\frijolesB.txt')
[m,n] = size(XA);
X = XA(:,1:16)'; t=XA(:,17)';
t = t + 1;
tt = ind2vec(t);
load beansProbaTrain.mat
Ya = sim(RN,X);
Y = vec2ind(Ya);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentajePrueba = (ac/m)*100

save beansProbaPorciPrueba porcentajePrueba