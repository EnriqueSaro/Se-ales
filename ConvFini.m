function finita = ConvFini(secuencia_1, secuencia_2, tam_1, tam_2, indice_1, indice_2)
    
    ceros = 0;
    
    for x = 1 : tam_2
        if x ~= 1
            for ceros = 1 : x - 1
                multiplica(x, ceros) = 0;
            end
        end
        for y = 1 : tam_1
            multiplica(x, ceros + y) = secuencia_1(y) * secuencia_2(x);
        end
    end
    
    finita = sum(multiplica);    
