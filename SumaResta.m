function [suma, resta, multiplicacion] = SumaResta(secuencia_1, secuencia_2, indice_1, indice_2, tam_1, tam_2)
%funcion que suma

    izquierda = indice_1 - indice_2;
    derecha_1 = tam_1 - indice_1;
    derecha_2 = tam_2 - indice_2;
    config_secuencia_1 = secuencia_1;
    config_secuencia_2 = secuencia_2;
    izquierda_secuencia_1 = secuencia_1;
    izquierda_secuencia_2 = secuencia_2;

    if derecha_2 > derecha_1
        for x = (tam_1+1):tam_1 + (derecha_2 - derecha_1)
            config_secuencia_1(x) = 0;
        end 
        izquierda_secuencia_1 = config_secuencia_1
    else
        for x = (tam_2+1):tam_2 + (derecha_1 - derecha_2)
            config_secuencia_2(x) = 0;
        end 
        izquierda_secuencia_2 = config_secuencia_2
    end

    if izquierda > 0
        for x = 1:izquierda
%             config_secuencia_2(x) = 0;
            izquierda_secuencia_2(x) = 0;
        end
        [NI, tam_config_2] = size(config_secuencia_2);
        for x = izquierda+1:tam_config_2+izquierda
%             config_secuencia_2(x) = secuencia_2(x-izquierda)
            izquierda_secuencia_2(x) = config_secuencia_2(x-izquierda)
        end 
    else 
        izquierda = abs(izquierda);
        for x = 1:izquierda
            izquierda_secuencia_1(x) = 0;
        end
        [NI, tam_config_1] = size(config_secuencia_1);
        for x = izquierda+1:tam_config_1+izquierda
            izquierda_secuencia_1(x) = config_secuencia_1(x-izquierda)
        end 
    end
        
    suma = izquierda_secuencia_1 + izquierda_secuencia_2;
    resta = izquierda_secuencia_1 - izquierda_secuencia_2;
    multiplicacion = izquierda_secuencia_1 .* izquierda_secuencia_2;
