function posiciones = Separacioneje(centroGrafica, ss)
%funcion que separa los valores de x para las gráficas

       
        [NA, tam_resultante] = size(ss); 
         posiciones = zeros(1,tam_resultante);
     if centroGrafica ~= 1
        cont = centroGrafica -1;
        for y = 1:centroGrafica -1
            posiciones(y)=cont*(-1);
            cont = cont -1;
        end
        for y = y + 1:tam_resultante- centroGrafica +y+1
            posiciones(y)=cont;
            cont = cont +1;
        end
     else
         posiciones = 0:tam_resultante - 1;
     end