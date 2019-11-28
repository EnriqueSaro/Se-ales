function periodica = ConvPeri(finita, tam_2)

    [NI, tam_finita] = size(finita);
    
    contador = 1;
    numerando = tam_finita/tam_2;
    numerando = ceil(numerando);
    
    for x = 1 : numerando
        for y = 1 : tam_2
            if contador ~= tam_finita + 1
                bloques(x, y) = finita(contador);
                contador = contador + 1;
            else
                break;
            end
        end
    end
    
    periodica = sum(bloques);
    