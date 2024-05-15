%{
#include<stdio.h>
int yylex();
int yyerror();

%}
%token ID TYPE SC NL COMMA
%%
start:TYPE varlist SC NL 	{printf("valid declarative statement");}
;

varlist:varlist COMMA ID
	|ID
;


%%
int yyerror()
{
printf("Invalid declarative statement");
}

int yywrap()
{
return 1;
}

int main()
{
yyparse();
}



//lex Var1.l
//yacc -d Var1.y
//cc lex.yy.c y.tab.c
// ./a.out

//output Screen:
//int a,b;
//valid declarative statementint 
//a=10,
//Invalid declarative statemen

// Write a program using YACC specifications to implement syntax analysis phase of compiler to 
//validate type and syntax of variable declaration in C program.  
