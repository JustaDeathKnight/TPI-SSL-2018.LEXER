package Analizador_Lexico;
import static Analizador_Lexico.Token.*;
%%
%class Lexer
%type Token
Letras = [a-zA-z_]
Digito = [0-9]
White = [ \t\r\n]
%{
public String lexeme;
%}
%%
    {White} {/*Ignore*/}
    "//".* {/*Ignore*/}
    "CREATE" {return TKN_CREATE;}
    "TABLE" {return TKN_TABLE;}
    "SELECT" {return TKN_SELECT;}
    "FROM" {return TKN_FROM;}
    "WHERE" {return TKN_WHERE;}
    "GROUP" {return TKN_GROUP;}
    "BY" {return TKN_BY;}
    "AVG" {return TKN_AVG;}
    "SUM" {return TKN_SUM;}
    "MAX" {return TKN_MAX;}   
    "(" {return TKN_APAR;}
    ")" {return TKN_CPAR;}
    ";" {return TKN_PTOCOMA;}
    "." {return TKN_PTO;}
    "," {return TKN_COMA;}
    "<" {return TKN_MEN;}
    ">" {return TKN_MAY;}
    ">=" {return TKN_MAYIGU;}
    "<=" {return TKN_MENIGU;}
    "=" {return TKN_IGUAL;}
    "!=" {return TKN_DIST;}
    "and" {return TKN_AND;}
    "or" {return TKN_OR;}
    "+" {return TKN_PLUS;}
    "-" {return TKN_MINUS;}
    "*" {return TKN_MULT;}
    "/" {return TKN_DIVID;}
    "CHAR" {return TKN_TYPE;}
    "INTEGER" {return TKN_TYPE;}
    "FLOAT" {return TKN_TYPE;}
    {Letras} ({Letras}|{Digito})* {lexeme=yytext(); return TKN_ID;}
    [-+]?{Digito}+ {lexeme=yytext(); return TKN_INT;}
    . {return TKN_ERROR;}