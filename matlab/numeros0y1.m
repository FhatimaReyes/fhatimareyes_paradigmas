clear, clc

% matriz cuadrada de orden 3 x 3
CERO = [0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0];

UNO =  [0 0 1 0 0;
        0 1 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 0 0 0];
     

DOS =  [0 1 1 1 0;
        1 0 0 0 1;
        0 0 0 0 1;
        0 0 1 1 0;
        0 1 0 0 0;
        1 0 1 0 0;
        1 1 1 1 1;
        0 0 0 0 0];


TRES = [1 1 1 1 1;
        0 0 0 0 1;
        0 0 0 0 1;
        0 1 1 1 1;
        0 0 0 0 1;
        0 0 0 0 1;
        1 1 1 1 1;
        0 0 0 0 0];
        
CUATRO =  [1 0 0 1 0;
           1 0 0 1 0;
           1 0 0 1 0;
           1 1 1 1 0;
           0 0 0 1 0;
           0 0 0 1 0;
           0 0 0 1 0;
           0 0 0 0 0];
           
CINCO = [1 1 1 1 1;
         1 0 0 0 0;
         1 0 0 0 0;
         1 1 1 1 1;
         0 0 0 0 1;
         0 0 0 0 1;
         1 1 1 1 1;
         0 0 0 0 0];         
           
 SEIS = [1 1 1 1 1;
         1 0 0 0 0;
         1 0 0 0 0;
         1 1 1 1 1;
         1 0 0 0 1;
         1 0 0 0 1;
         1 1 1 1 1;
         0 0 0 0 0];             
           
SIETE = [1 1 1 1 1;
         0 0 0 0 1;
         0 0 0 0 1;
         0 0 0 0 1;
         0 0 0 0 1;
         0 0 0 0 1;
         0 0 0 0 1;
         0 0 0 0 0];             
           
 OCHO = [1 1 1 1 1;
         1 0 0 0 1;
         1 0 0 0 1;
         1 1 1 1 1;
         1 0 0 0 1;
         1 0 0 0 1;
         1 1 1 1 1;
         0 0 0 0 0];              
           
NUEVE = [1 1 1 1 1;
         1 0 0 0 1;
         1 0 0 0 1;
         1 1 1 1 1;
         0 0 0 0 1;
         0 0 0 0 1;
         1 1 1 1 1;
         0 0 0 0 0];             
           
                   
INPUT = [1 1 1 1 1;
         1 0 0 0 0;
         1 0 0 0 0;
         1 1 1 1 1;
         1 0 0 0 1;
         1 0 0 0 1;
         1 1 1 1 1;
         0 0 0 0 0];   
  
 renglones = 8;
 columnas = 5;
 
 % impresion de matriz UNO
 
fprintf('Impresion de matriz INPUT \n');

for ren=1:renglones;
    for col=1:columnas;
        fprintf('%d ', INPUT(ren, col))
    end
    fprintf('\n');
end

fprintf('Algoritmo de MATCH perfecto vs CERO \n');
ISCERO = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (CERO(ren,col) ~= INPUT(ren,col))
           ISCERO = 0;
           %break;
        end
     end
end
fprintf('%d  \n', ISCERO);
if ISCERO == 1
  fprintf('%d INPUT es un CERO \n');
end


fprintf('Algoritmo de MATCH perfecto vs UNO \n');
ISUNO = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (UNO(ren,col) ~= INPUT(ren,col))
           ISUNO = 0;
       
        end
     end
end
fprintf('%d  \n', ISUNO);


fprintf('Algoritmo de MATCH perfecto vs DOS \n');
ISDOS = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (DOS(ren,col) ~= INPUT(ren,col))
           ISDOS = 0;
       
        end
     end
end
fprintf('%d  \n', ISDOS);


fprintf('Algoritmo de MATCH perfecto vs TRES \n');
ISTRES = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (TRES(ren,col) ~= INPUT(ren,col))
           ISTRES = 0;
       
        end
     end
end
fprintf('%d  \n', ISTRES);

fprintf('Algoritmo de MATCH perfecto vs CUATRO \n');
ISCUATRO = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (CUATRO(ren,col) ~= INPUT(ren,col))
           ISCUATRO = 0;
       
        end
     end
end
fprintf('%d  \n', ISCUATRO);
 
 
fprintf('Algoritmo de MATCH perfecto vs CINCO \n');
ISCINCO = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (CINCO(ren,col) ~= INPUT(ren,col))
           ISCINCO = 0;
       
        end
     end
end
fprintf('%d  \n', ISCINCO);


fprintf('Algoritmo de MATCH perfecto vs SEIS \n');
ISSEIS = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (SEIS(ren,col) ~= INPUT(ren,col))
           ISSEIS = 0;
       
        end
     end
end
fprintf('%d  \n', ISSEIS);

fprintf('Algoritmo de MATCH perfecto vs SIETE \n');
ISSIETE = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (SIETE(ren,col) ~= INPUT(ren,col))
           ISSIETE = 0;
       
        end
     end
end
fprintf('%d  \n', ISSIETE);

fprintf('Algoritmo de MATCH perfecto vs OCHO \n');
ISOCHO = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (OCHO(ren,col) ~= INPUT(ren,col))
           ISOCHO = 0;
       
        end
     end
end
fprintf('%d  \n', ISOCHO);

fprintf('Algoritmo de MATCH perfecto vs NUEVE \n');
ISNUEVE = 1; % true
for ren=1:renglones;
    for col=1:columnas;
        if (NUEVE(ren,col) ~= INPUT(ren,col))
           ISNUEVE = 0;
       
        end
     end
end
fprintf('%d  \n', ISNUEVE);