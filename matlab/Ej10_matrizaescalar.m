clear, clc

A = [0 0 0 0;
     0 0 0 0;
     0 0 0 0;
     0 0 0 0];
         
orden = 4;

fprintf('captura del escalar \n');
myescalar = input("Escalar: ");
 
fprintf('Figura de la matriz: \n')

for ren =1:orden;
  for col =1:orden;
      fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor


fprintf('Transformando Matriz a Escalar: \n')

for ren =1:orden;
  for col =1:orden;
      if (col == ren)
         A(ren, col) = myescalar;
      end  
      
      fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor