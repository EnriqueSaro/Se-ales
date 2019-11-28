function [desplazamiento, new_indice_1] = Desplaza(secuencia_1, secuencia_2, indice_1, indice_2, tam_1, tam_2, factor)
%funcion que hace el desplazamiento

    
    fac = factor;
    if fac > 0
       if fac+indice_1 > tam_1
           for x = tam_1+1 : indice_1+fac
               secuencia_1(x) = 0;
           end
       end 
       desplazamiento = secuencia_1;
       new_indice_1 = indice_1+fac;
    else
        if fac+indice_1 <= 0
            for x = 1 : abs(fac-1) - indice_1
                auxiliar(x) = 0;
            end
%             for x = abs(fac-2)-indice_1 : tam_1 + abs(fac-1) - indice_1
%                 auxiliar(x) = secuencia_1(x+fac+1);
%             end 
            desplazamiento = [auxiliar secuencia_1];
            new_indice_1 = 1;
        else
            desplazamiento = secuencia_1;
            new_indice_1 = indice_1 + fac;
        end
    end 
    
    