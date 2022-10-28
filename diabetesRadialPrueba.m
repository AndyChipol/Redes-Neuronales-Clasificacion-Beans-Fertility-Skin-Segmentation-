function diebetesRadialPrueba
XA = load('Diabetes\diabetesB.txt')
[m,n] = size(XA);
X = XA(:,1:19)'; t=XA(:,20)';
load diaRadialTrain.mat
Y = sim(RN,X);
ac = 0;
for i=1:m
    if round(Y(i)) == t(i)
        ac = ac+1;
    end
end
porcentajePrueba = (ac/m)*100

