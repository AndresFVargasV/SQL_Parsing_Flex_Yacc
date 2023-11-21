%{
#include <stdio.h>
#include "y.tab.h"
char *error_token = NULL;

%}

%option case-insensitive 
%option noyywrap


%%

"CREATE"            {yylval.token = yytext; return(CREATE);}
"DROP"              {yylval.token = yytext; return(DROP);}
"TABLE"             {yylval.token = yytext; return(TABLE);}
"INSERT"            {yylval.token = yytext; return(INSERT);}
"INTO"              {yylval.token = yytext; return(INTO);}
"DELETE"            {yylval.token = yytext; return(DELETE);}
"UPDATE"            {yylval.token = yytext; return(UPDATE);}
"SELECT"            {yylval.token = yytext; return(SELECT);}
"FROM"              {yylval.token = yytext; return(FROM);}
"WHERE"             {yylval.token = yytext; return(WHERE);}
"VALUES"            {yylval.token = yytext; return(VALUES);}
"SET"               {yylval.token = yytext; return(SET);}
"ORDER"             {yylval.token = yytext; return(ORDER);}
"GROUP"		    {yylval.token = yytext; return(GROUP);}
"BY"                {yylval.token = yytext; return(BY);}

"MAX"               {yylval.token = yytext; return(MAX);}
"MIN"               {yylval.token = yytext; return(MIN);}
"AVG"               {yylval.token = yytext; return(AVG);}
"COUNT"             {yylval.token = yytext; return(COUNT);}
"AND"               {yylval.token = yytext; return(AND);}
"OR"                {yylval.token = yytext; return(OR);}
"DESC"                {yylval.token = yytext; return(DESC);}
"ASC"                {yylval.token = yytext; return(ASC);}

"VARCHAR"           {yylval.token = yytext; return(VARCHAR);}
"INTEGER"           {yylval.token = yytext; return(INTEGER);}
"DECIMAL"           {yylval.token = yytext; return(DECIMAL);}
"*"                 {yylval.token = yytext; return(ASTERISCO);}
"("                 {yylval.token = yytext; return(PARABRE);}
")"                 {yylval.token = yytext; return(PARCIERRA);}
";"                 {yylval.token = yytext; return(PUNCOMA);}
"="                 {yylval.token = yytext; return(IGUAL);}
","                 {yylval.token = yytext; return(COMA);}


[a-zA-ZáéíóúÁÉÍÓÚÑüÜ-][a-zA-Z0-9áéíóúÁÉÍÓÚÑüÜ-]* {yylval.token = yytext; return(ID);}
[0-9]+              {yylval.number = atoi(yytext); return(ENTERO); }
[0-9]+\.[0-9]+      {yylval.number = atoi(yytext); return(FLOAT); }
\'[a-zA-Z0-9áéíóúÁÉÍÓÚÑüÜ-]+\'          {yylval.token = yytext; return(CADENA);}
\"[a-zA-Z0-9áéíóúÁÉÍÓÚÑüÜ-]+\"          {yylval.token = yytext; return(CADENA);}


[=()<>*;,'"] { return *yytext; }


[ \t\r\n]+    {}
.             {}

%%

