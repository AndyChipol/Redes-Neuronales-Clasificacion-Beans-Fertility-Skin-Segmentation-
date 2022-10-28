function fertilidadRNN
load('Fertilidad\fertilidadA.txt')

[m,n] = size(fertilidadA);
X = fertilidadA(:,1:9)';

t = [];
for i=1:m
    if(fertilidadA(i,10)==0) t=[t [1;0;0]];
    else if(fertilidadA(i,10)==1) t = [t,[0;1;0]];
        end
    end
end

RNUnaN = newff(minmax(X),[20,20,3],{'logsig','logsig','logsig'},'traincgp');
RNEntrenada.trainParam.epochs = 10000%;
RNEntrenada.trainParam.min_grad = 1e-27%;
RNEntrenada.trainParam.show = 1;
RNEntrenada.trainParam.time = 600;
RNEntrenada = train(RNUnaN,X,t);
Y = sim(RNEntrenada, X)

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

porcentaje = (aciertos/m)*100

save fertiTrain RNEntrenada
save fertiTrainPorciernto porcentaje
