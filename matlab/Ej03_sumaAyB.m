clear, clc

% Definir una matriz
% Sumar dos matrices de 2x2 usando ciclos (A + B)
A=[1 1; 
   1 1];
   
  renglones = 2;
  columnas = 2; 
 
B=[1 1;
   1 1];
  
 renglones = 2;
 columnas = 2; 
 
 % impresion de las matrices
 fprintf('Impresion de las matrices A y B de orden 2x2 \n');
 
 fprintf('impresion de A: \n');
   for ren=1:renglones;
   for col=1:columnas;
     fprintf('%d ', A(ren, col))
   end
   fprintf('\n');
 end

 fprintf('impresion de B: \n');
  for ren=1:renglones;
   for col=1:columnas;
     fprintf('%d ', B(ren, col))
   end
   fprintf('\n');
 end
  
  %Resultado
  fprintf('Resultado de la Suma: \n');
 for ren=1:renglones;
   for col=1:columnas;
     fprintf('%d ', [A(ren, col) + B(ren, col)])
   end
   fprintf('\n');
 end