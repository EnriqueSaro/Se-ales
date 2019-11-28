function [cero, escalon, lineal] = Interpolacion(secuencia_1, secuencia_2, indice_1, indice_2, tam_1, tam_2, factor)
    
    
    fac = factor;
    contador = 1;
    
    for x = 1 : tam_1 
        cero(contador) = secuencia_1(x);
        contador = contador + 1;
        for y = 1 : fac - 1
            cero(contador) = 0;
            contador = contador + 1;
        end
    end
    
    contador = 1;
    for x = 1 : tam_1 
        escalon(contador) = secuencia_1(x);
        contador = contador + 1;
        for y = 1 : fac - 1
            escalon(contador) = secuencia_1(x);
            contador = contador + 1;
        end
    end
    
    contador = 1;
    for x = 1 : tam_1 
        lineal(contador) = secuencia_1(x);
        contador = contador + 1;
        if x == tam_1
            nf = 0;
        else
            nf = secuencia_1(x+1);
        end
        for y = 1 : fac - 1
 %           aux(contador) = nf;
            ni = lineal(contador-1);
            if nf > ni
                lineal(contador) = ni + (abs(nf - secuencia_1(x))/fac);
            else
                lineal(contador) = ni - (abs(nf - secuencia_1(x))/fac);
            end
            contador = contador + 1;
        end
    end