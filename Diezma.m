function [diezmacion, new_indice] = Diezma(secuencia_1, indice_1, factor, tam_1)

   
    fac = factor;
    posicion = 1;
    indice = 1;
    
    for x = indice_1 - 1 : -1 : 1
        if mod(posicion,fac) == 0
            negativos(indice) = secuencia_1(x);
            indice = indice + 1;
        end
        posicion = posicion + 1;
    end
    
    if indice ~= 1
        negativos = fliplr(negativos)
    else
        negativos(1) = 0;
    end
        
    negativos(indice) = secuencia_1(indice_1);
    [NI, new_indice] = size(negativos); 
    
    posicion = 1;
    indice = 1;
    for x = indice_1 + 1 : tam_1
        if mod(posicion,fac) == 0
           positivos(indice) = secuencia_1(x);
           indice = indice + 1;
        end
        posicion = posicion + 1;
    end
    
    if indice == 1
        positivos(1) = 0;
    end
   
    diezmacion = [negativos positivos];