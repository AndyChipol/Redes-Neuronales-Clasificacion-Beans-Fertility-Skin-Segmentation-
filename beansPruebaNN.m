function beansPruebaNN
load('Frijoles\frijolesB.txt')

[m,n] = size(frijolesB);
X = frijolesB(:,1:16)';

t = [];
for i=1:m
    if(frijolesB(i,17)==0) t=[t [1;0;0;0;0;0;0;]];
    else if(frijolesB(i,17)==1) t = [t,[0;1;0;0;0;0;0]];
        else if(frijolesB(i,17)==2)t = [t,[0;0;1;0;0;0;0]];
                else if(frijolesB(i,17)==3)t = [t,[0;0;0;1;0;0;0]];
                        else if(frijolesB(i,17)==4)t = [t,[0;0;0;0;1;0;0]];
                                else if(frijolesB(i,17)==5)t = [t,[0;0;0;0;0;1;0]];
                                        else if(frijolesB(i,17)==6)t = [t,[0;0;0;0;0;0;1]];
                                            end
                                    end
                            end
                    end
            end                         
        end
    end
end

load beansTrain.mat
Y = sim(RNEntrenada, X);

tt = [];
for j=1:m
    [vm,pos]=max(Y(:,j));
    if(pos==1) tt=[tt [1;0;0;0;0;0;0]];
    else if(pos==2) tt = [tt [0;1;0;0;0;0;0]];
        else if(pos==3) tt = [tt [0;0;1;0;0;0;0]];
            else if(pos==4) tt = [tt [0;0;0;1;0;0;0]];
                else if(pos==5) tt = [tt [0;0;0;1;0;0;0]];
                    else if(pos==6) tt = [tt [0;0;0;0;1;0;0]];
                        else if(pos==7) tt = [tt [0;0;0;0;0;1;0]];
                            else if(pos==8) tt = [tt [0;0;0;0;0;0;1]];
                                end
                            end
                        end
                    end
                end
            end
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
 
 porcentaje = (aciertos/m)*100
 
 
 save beansPrueba porcentaje