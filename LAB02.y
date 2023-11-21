%{
#include <stdio.h>
#include "y.tab.h"
int yylex();
int yyerror(char *s);
extern FILE *yyin; 
extern FILE *yyout;
int errorline;
int linea;
int incorrecto;
%}
 
%token CREATE DROP TABLE SELECT INSERT DELETE UPDATE INTO VALUES SET FROM ASC DESC ENTERO FLOAT CADENA ID  VARCHAR DECIMAL INTEGER
%token WHERE GROUP ORDER BY OR AND ASTERISCO PARABRE PARCIERRA PUNCOMA IGUAL COMA
%token MAX MIN AVG COUNT


%union{
int number;
char id;
char *token;
}

%%

CODE:
    linea 
;

linea: sentencia PUNCOMA {linea++; if(errorline==1){printf("Error en la línea %d\n", linea-1); errorline=0;}}
    |sentencia PUNCOMA {linea++; if(errorline==1){printf("Error en la línea %d\n", linea-1); errorline=0;}} linea

sentencia:
     |CREATE TABLE ID PARABRE argumentos PARCIERRA
     |DROP TABLE ID
     |INSERT INTO IDS VALUES PARABRE valores PARCIERRA
     |DELETE FROM ID WHERE condiciones 
     |UPDATE ID SET IDS IGUAL valorc WHERE condiciones 
     |SELECT FUNIDS FROM IDS
     |SELECT FUNIDS FROM IDS WHERE condiciones 
     |SELECT FUNIDS FROM IDS WHERE condiciones GROUP BY IDS
     |SELECT FUNIDS FROM IDS WHERE condiciones ORDER BY IDS 
     |SELECT FUNIDS FROM IDS WHERE condiciones ORDER BY IDS ORDERS 
     |SELECT FUNIDS FROM IDS WHERE condiciones GROUP BY IDS ORDERS
     |SELECT FUNIDS FROM IDS GROUP BY IDS
     |SELECT FUNIDS FROM IDS ORDER BY IDS 
     |SELECT FUNIDS FROM IDS ORDER BY IDS ORDERS 
     |SELECT FUNIDS FROM IDS WHERE condiciones GROUP BY IDS ORDER BY IDS ORDERS
     |SELECT FUNIDS FROM IDS WHERE condiciones GROUP BY IDS ORDER BY IDS
     |SELECT ASTERISCO FROM IDS
     |SELECT ASTERISCO FROM IDS WHERE condiciones 
     |SELECT ASTERISCO FROM IDS WHERE condiciones GROUP BY IDS
     |SELECT ASTERISCO FROM IDS WHERE condiciones ORDER BY IDS 
     |SELECT ASTERISCO FROM IDS WHERE condiciones ORDER BY IDS ORDERS 
     |SELECT ASTERISCO FROM IDS WHERE condiciones GROUP BY IDS ORDERS
     |SELECT ASTERISCO FROM IDS GROUP BY IDS
     |SELECT ASTERISCO FROM IDS ORDER BY IDS 
     |SELECT ASTERISCO FROM IDS ORDER BY IDS ORDERS 
     |SELECT ASTERISCO FROM IDS WHERE condiciones GROUP BY IDS ORDER BY IDS ORDERS
     |SELECT ASTERISCO FROM IDS WHERE condiciones GROUP BY IDS ORDER BY IDS
     |estado_error




FUNIDS: ID COMA FUNIDS 
    | funcion COMA FUNIDS
    | ID
    | funcion

valor: CADENA
    |ENTERO
    |FLOAT

valores: valor 
    | valor COMA valores
    
valorc: valor|ID 
      
IDS:  ID
    | ID COMA IDS
    
ORDERS: ASC
      | DESC

argumentos: argumento
     |argumento COMA argumentos

argumento: ID VARCHAR PARABRE ENTERO PARCIERRA
    |ID VARCHAR
    |ID INTEGER
    |ID DECIMAL
    |ID DECIMAL PARABRE ENTERO PARCIERRA

funcion:MAX PARABRE ID PARCIERRA
        |MIN PARABRE ID PARCIERRA
        |AVG PARABRE ID PARCIERRA
        |COUNT PARABRE ID PARCIERRA
        
operador: IGUAL
        |'<''>'
        |'>'
        |'<'
        |'>'IGUAL
        |'<'IGUAL
        |'+'
        |'*'
        |'-'
        |'/'
        
condicion: valorc operador valorc
          

condiciones: condicion
           |condicion AND condiciones
           |condicion OR condiciones
           

estado_error: error{errorline=1;}

%%

int yyerror(char *s) {
    incorrecto++;
    if (incorrecto==1){
    	printf("Incorrecto\n\n");
    }
}

int main(int argc, char *argv[]) {
    incorrecto=0;
    errorline=0;
    linea=1;
    FILE *input_file;

    if (argc != 2) {
        printf("Uso: %s nombre_del_archivo\n", argv[0]);
        return 1;
    }

    input_file = fopen(argv[1], "r");
    if (input_file == NULL) {
        perror("Error al abrir el archivo de entrada");
        return 1;
    }
    
    FILE* output_file = fopen("salida.txt", "w");
    if (output_file == NULL) {
        perror("Error al abrir el archivo de salida");
        return 1;
    }

    
    yyout = output_file;

    
    yyin = input_file;

    yyparse();
    
    if (incorrecto==0){
    	printf("Correcto");
    }
    

    fclose(input_file);

    return 0;
}
