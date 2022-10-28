function fertilidadRNNPrueba
load('Fertilidad\fertilidadB.txt')
[m,n] = size(fertilidadB);
X = fertilidadB(:,1:9)';
t = [];
for i=1:m
    if(fertilidadB(i,10)==0) t=[t [1;0;0]];
    else if(fertilidadB(i,10)==1) t = [t,[0;1;0]];
        end
    end
end
load fertiTrain.mat
Y = sim(RNEntrenada, X);
tt = [];
for j=1:m
    [vm,pos]=max(Y(:,j));
    if(pos==1) tt=[tt [1;0;0;]];
    else if(pos==2) tt = [tt [0;1;0]];
        end
    end
end
%comparar Aciertos
aciertos = 0;
for i=1:m
    [a,pos1] = max(t(:,i));[aa,pos2] = max(tt(:,i));
    if (pos1 == pos2)
        aciertos = aciertos+1;
    end
end
porcentajePrueba = (aciertos/m)*100
save fertiPruebaPorciernto porcentajePrueba