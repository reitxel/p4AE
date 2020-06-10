function pesos=fitness_AND(loc)
%Las primeras dos coordenadas son las entradas y las terceras son las salidas
I=[0 0 0;0 1 0;1 0 0;1 1 1];
pesos=0; %inicializar pesos en 0

for j=1:length(I)
    x1=I(j,1); %entrada
    x2=I(j,2); %entrada
    x3=I(j,3); %salida
    
    w1=loc(1);
    w2=loc(2);
    b=loc(3);
    
    out=(w1*x1+w2*x2-b);
    
    if out>=0
        out=1;
    else
        out=0;
    end
    
    pesos=pesos+abs(out-x3); %nuevos pesos
end