clear, clc

% matriz cuadrada de orden 4 x 4
A = [-1 7 0 17;
     12 -3 8 6;
      2 9 3 -4;
     15 6 1  0];
     
 renglones = 4;
 columnas = 4;
 

 % impresion de matriz usando 2 ciclos anidados
 
fprintf('Impresion de matriz de orden 4x4 \n');

for ren=1:renglones;
    for col=1:columnas;
        fprintf('%d ', A(ren, col))
    end
    fprintf('\n');
end

fprintf('Impresion de valores de su diagonal 4x4 \n');

for ren=1:1:renglones;
   for col=1:1:columnas;
     if(ren==col)
       fprintf(' %d' , A(ren,col))
     end  
    end
  end