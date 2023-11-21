/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    CREATE = 258,                  /* CREATE  */
    DROP = 259,                    /* DROP  */
    TABLE = 260,                   /* TABLE  */
    SELECT = 261,                  /* SELECT  */
    INSERT = 262,                  /* INSERT  */
    DELETE = 263,                  /* DELETE  */
    UPDATE = 264,                  /* UPDATE  */
    INTO = 265,                    /* INTO  */
    VALUES = 266,                  /* VALUES  */
    SET = 267,                     /* SET  */
    FROM = 268,                    /* FROM  */
    ASC = 269,                     /* ASC  */
    DESC = 270,                    /* DESC  */
    ENTERO = 271,                  /* ENTERO  */
    FLOAT = 272,                   /* FLOAT  */
    CADENA = 273,                  /* CADENA  */
    ID = 274,                      /* ID  */
    VARCHAR = 275,                 /* VARCHAR  */
    DECIMAL = 276,                 /* DECIMAL  */
    INTEGER = 277,                 /* INTEGER  */
    WHERE = 278,                   /* WHERE  */
    GROUP = 279,                   /* GROUP  */
    ORDER = 280,                   /* ORDER  */
    BY = 281,                      /* BY  */
    OR = 282,                      /* OR  */
    AND = 283,                     /* AND  */
    ASTERISCO = 284,               /* ASTERISCO  */
    PARABRE = 285,                 /* PARABRE  */
    PARCIERRA = 286,               /* PARCIERRA  */
    PUNCOMA = 287,                 /* PUNCOMA  */
    IGUAL = 288,                   /* IGUAL  */
    COMA = 289,                    /* COMA  */
    MAX = 290,                     /* MAX  */
    MIN = 291,                     /* MIN  */
    AVG = 292,                     /* AVG  */
    COUNT = 293                    /* COUNT  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define CREATE 258
#define DROP 259
#define TABLE 260
#define SELECT 261
#define INSERT 262
#define DELETE 263
#define UPDATE 264
#define INTO 265
#define VALUES 266
#define SET 267
#define FROM 268
#define ASC 269
#define DESC 270
#define ENTERO 271
#define FLOAT 272
#define CADENA 273
#define ID 274
#define VARCHAR 275
#define DECIMAL 276
#define INTEGER 277
#define WHERE 278
#define GROUP 279
#define ORDER 280
#define BY 281
#define OR 282
#define AND 283
#define ASTERISCO 284
#define PARABRE 285
#define PARCIERRA 286
#define PUNCOMA 287
#define IGUAL 288
#define COMA 289
#define MAX 290
#define MIN 291
#define AVG 292
#define COUNT 293

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 18 "LAB02.y"

int number;
char id;
char *token;

#line 149 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
