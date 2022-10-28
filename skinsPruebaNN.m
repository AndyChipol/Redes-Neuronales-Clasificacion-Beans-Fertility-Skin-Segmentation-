function skinsPruebaNN
load('Skins\skinB.txt')

[m,n] = size(skinB);
X = skinB(:,1:3)';

t = [];
for i=1:m
    if(skinB(i,4)==1) t=[t [1;0]];
    else if(skinB(i,4)==2) t = [t,[0;1]];
        end
    end
end

load skinTrain.mat
Y = sim(RNEntrenada, X);

tt = [];
for j=1:m
    [vm,pos]=max(Y(:,j));
    if(pos==1) tt=[tt [1;0]];
    else if(pos==2) tt = [tt [0;1]];
        end
    end
end

%comparar Aciertos
aciertos = 0;
for i=1:m
     [a,pos1] = max(t(:,i));[aa,pos2] = max(tt(:,i))
     if (pos1 == pos2)
         aciertos = aciertos+1;
     end
end
 
 porcentajePrueba = (aciertos/m)*100
 porcentajePrueba
 
 save skinPruebaPorciernto porcentajePrueba