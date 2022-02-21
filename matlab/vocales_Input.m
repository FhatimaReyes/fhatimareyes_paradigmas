 clear , clc 

 A = [0 1 1 1 1 1 0;
      0 1 0 0 0 1 0; 
      0 1 0 0 0 1 0;
      0 1 1 1 1 1 0; 
      0 1 0 0 0 1 0;
      0 1 0 0 0 1 0;
      0 1 0 0 0 1 0]

 E = [0 1 1 1 1 1 0;
      0 1 0 0 0 0 0; 
      0 1 0 0 0 0 0;
      0 1 1 1 1 0 0; 
      0 1 0 0 0 0 0;
      0 1 0 0 0 0 0;
      0 1 1 1 1 1 0]
      
 I = [0 1 1 1 1 1 0;
      0 0 0 1 0 0 0; 
      0 0 0 1 0 0 0;
      0 0 0 1 0 0 0; 
      0 0 0 1 0 0 0;
      0 0 0 1 0 0 0;
      0 1 1 1 1 1 0]
      
 O = [0 1 1 1 1 1 0;
      0 1 0 0 0 1 0; 
      0 1 0 0 0 1 0;
      0 1 0 0 0 1 0; 
      0 1 0 0 0 1 0;
      0 1 0 0 0 1 0;
      0 1 1 1 1 1 0]
        
 U = [0 1 0 0 0 1 0;
      0 1 0 0 0 1 0; 
      0 1 0 0 0 1 0;
      0 1 0 0 0 1 0; 
      0 1 0 0 0 1 0;
      0 1 0 0 0 1 0;
      0 1 1 1 1 1 0]
          
INPUT = [0 1 1 1 1 1 0;
         0 1 0 0 0 1 0; 
         0 1 0 0 0 1 0;
         0 1 0 0 0 1 0; 
         0 1 0 0 0 1 0;
         0 1 0 0 0 1 0;
         0 1 1 1 1 1 0] 
  
 renglones = 7;
 columnas = 7;
 
 % impresion de matriz Vocales 
 
fprintf('Impresion de matriz INPUT \n');

for ren=1:renglones;
    for col=1:columnas;
        fprintf('%d ', INPUT(ren, col))
    end
    fprintf('\n');
end

fprintf('Algoritmo de MATCH perfecto vs A \n');
 VA = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (A(ren,col) ~= INPUT(ren,col))
           VA = 0;
           %break;
        end
     end
end
fprintf('%d  \n', VA);
if VA == 1
  fprintf('%d INPUT es la vocal A \n');
end


fprintf('Algoritmo de MATCH perfecto vs E \n');
VE = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (E(ren,col) ~= INPUT(ren,col))
           VE = 0;
       
        end
     end
end
fprintf('%d  \n', VE);


fprintf('Algoritmo de MATCH perfecto vs I \n');
VI = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (I(ren,col) ~= INPUT(ren,col))
           VI = 0;
       
        end
     end
end
fprintf('%d  \n', VI);


fprintf('Algoritmo de MATCH perfecto vs O \n');
VO = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (O(ren,col) ~= INPUT(ren,col))
           VO = 0;
       
        end
     end
end
fprintf('%d  \n', VO);

fprintf('Algoritmo de MATCH perfecto vs U \n');
VU = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (U(ren,col) ~= INPUT(ren,col))
           VU = 0;
       
        end
     end
end
fprintf('%d  \n', VU);
