clear, clc

%Proyecto Parcial - Sistema de Red Neuronal Hopfield 
%Paradigmas de Programacion
%Definir las matrices  

bar=[-1	-1	-1	-1	-1	1	-1	-1	-1	-1 -1	-1	-1	1	1	1	1	-1	-1	-1 -1	-1	1	1	1	1	1	1	-1	-1 -1	1	-1	-1	1	1	-1	-1	1	-1 1	-1	-1	-1	1	1	-1	-1	-1	1 -1	1	1	1	1	1	1	1	1	-1 -1	-1	-1	-1	1	1	-1	-1	-1	-1 -1	-1	-1	-1	1	1	-1	-1	-1	-1 1	1	1	1	1	1	1	1	1	1 -1	1	1	1	1	1	1	1	1	-1 -1	-1	1	1	1	1	1	1	-1	-1 -1	-1	-1	1	1	1	1	-1	-1	-1]; %patron barco 

car=[-1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	1	1	1	-1	-1 -1	-1	-1	1	1	1	1	1	1	1 -1	-1	-1	1	1	-1	1	-1	1	1 -1	-1	1	1	-1	-1	1	-1	-1	1 -1	1	1	1	-1	-1	1	-1	-1	1 -1	1	1	1	1	1	1	1	1	1 -1	1	1	1	1	1	1	1	1	1 -1	-1	1	1	1	-1	1	1	1	-1 -1	-1	-1	1	-1	-1	-1	1	-1	-1]; %patron carro

tren=[-1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	1	-1	-1	-1	1	-1	-1	-1	-1 -1	-1	-1	-1	1	1	1	-1	-1	-1 -1	1	-1	-1	1	-1	1	-1	-1	-1 -1	1	-1	-1	1	-1	1	-1	-1	-1 -1	1	1	1	1	1	1	-1	-1	-1 1	1	1	1	1	1	1	1	-1	-1 1	1	1	1	1	1	1	1	-1	-1 1	1	1	1	1	1	1	1	-1	-1 -1	1	1	1	1	1	1	1	-1	-1 -1	-1	1	-1	-1	1	1	-1	-1	-1] %patron tren

moto=[-1	-1	-1	-1	-1	1	1	1	1	-1 -1	-1	-1	-1	-1	-1	-1	-1	1	1 -1	-1	-1	-1	-1	1	1	1	1	-1 -1	1	1	-1	-1	-1	1	1	-1	-1 -1	1	1	1	1	1	1	1	1	-1 -1	-1	1	1	1	1	1	1	-1	-1 -1	-1	1	-1	1	-1	1	-1	1	-1 -1	-1	-1	1	-1	-1	-1	1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1  -1	-1	-1	-1	-1	-1	-1	-1	-1	-1] %patron moto

ovni=[-1	-1	-1	-1	-1	1	1	-1	-1	-1 -1	-1	-1	-1	1	-1	-1	1	-1	-1 -1	-1	-1	1	1	-1	-1	1	1	-1 -1	-1	-1	1	1	-1	-1	1	1	-1 -1	-1	1	-1	1	1	1	1	-1	1 -1	-1	1	1	-1	1	1	-1	1	1 -1	-1	-1	1	1	1	1	1	1	-1 -1	-1	-1	-1	-1	1	1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1]; %patron ovni

esp=[-1	-1	-1	-1	-1	-1	-1	-1	-1	-1 1	1	1	1	1	1	1	1	1	1 1	-1	-1	-1	-1	-1	-1	-1	-1	-1 1	-1	1	1	1	1	1	1	1	-1 1	-1	1	-1	-1	-1	-1	-1	1	-1 1	-1	1	-1	1	1	1	-1	1	-1 1	-1	1	-1	-1	-1	1	-1	1	-1 1	-1	1	1	1	1	1	-1	1	-1 1	-1	-1	-1	-1	-1	-1	-1	1	-1 1	1	1	1	1	1	1	1	1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1]; %patron espiral

rayo=[-1	-1	-1	-1	1	1	-1	-1	-1	-1 -1	-1	-1	1	1	1	-1	-1	-1	-1 -1	-1	1	1	1	-1	-1	-1	-1	-1 -1	1	1	1	-1	-1	-1	-1	-1	-1 1	1	1	-1	-1	-1	-1	-1	-1	-1 1	1	1	-1	-1	-1	-1	-1	-1	-1 -1	1	1	1	-1	-1	-1	-1	-1	-1 -1	-1	1	1	1	1	-1	-1	-1	-1 -1	-1	-1	1	1	1	-1	-1	-1	-1 -1	-1	1	1	1	-1	-1	-1	-1	-1 -1	1	1	1	-1	-1	-1	-1	-1	-1 -1	1	1	-1	-1	-1	-1	-1	-1	-1]; %patron rayo


barmul= bar(:) * bar(:)' - eye(120);
barmul

carmul= car(:) * car(:)' - eye(120);
carmul

trenmul= tren(:) * tren(:)' - eye(120);
trenmul

motomul= moto(:) * moto(:)' - eye(120);
motomul

ovnimul= ovni(:) * ovni(:)' - eye(120);
ovnimul

espmul= esp(:) * esp(:)' - eye(120);
espmul

rayomul= rayo(:) * rayo(:)' - eye(120);
rayomul

%suma de figuras 

w = barmul + trenmul + carmul + ovnimul + motomul + espmul + rayomul;  

%input (valor a encontrar)
 x = ovni; 
 
%mul 
u0 = x;
c = 1;
ulast = x;

u0 = u0*w;

while(1)

for i=1:1:120
    if u0(i)>0
      u0(i) = 1;
     elseif u0(i) < 0 
      u0(i) = (-1);
     endif
  endfor
 
  if (u0==ulast)
    
        fprintf('Resultado encontrado: \n\n');
          
          for i=1:120
            if (u0(i)) >0
              fprintf(' %d ', u0(i))
            else
              fprintf ('   ')
            endif
            
            if (mod(i,10)) == 0
              fprintf('\n' )
            endif
          endfor
          fprintf('\n' )
          
          fprintf('Resultado ingresado: \n\n');
          
          for i=1:120
            if (x(i))>0
              fprintf(' %d ', x(i))
            else
              fprintf ('   ')
            endif
            
            if (mod(i,10)) == 0
              fprintf('\n')
            endif
          endfor
          fprintf('\n')
  
      fprintf ('\n Matrices recorridas hasta hallar el resultado: %d \n', c);
     break;  
  else
     fprintf('No hay coincidencia\n')
  endif
  
  c = c + 1;
  ulast = u0;
  
end