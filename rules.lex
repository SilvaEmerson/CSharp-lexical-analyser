%{
#include <ctype.h>
#include <stdio.h>
int i;
%} 

keyword abstract|as|base|bool|break|byte|case|catch|char|checked|class|const|continue|decimal|default|delegate|do|double|else|enum|event|explicit|extern|false|finally|fixed|float|for|foreach|goto|if|implicit|in|int|interface|internal|is|lock|long|namespace|new|null|object|operator|out|override|params|private|protected|public|readonly|ref|return|sbyte|sealed|short|sizeof|stackalloc|static|string|struct|switch|this|throw|true|try|typeof|uint|ulong|unchecked|unsafe|ushort|using|virtual|void|volatile|while|add|alias|ascending|async|await|by|descending|dynamic|equals|from|get|global|group|into|join|let|nameof|on|orderby|partial|remove|select|set|value|var|when|where|where|yield

%%
{keyword} {
printf("<");
for(i=0;i<yyleng;i++)
printf("%c",toupper(yytext[i]));
printf(">");
}

"=" {printf("<ATRIB>");}
"//".*\n {printf("");}
[" "\t\n] {printf("");} 
"[" {printf("<B>");}
"]" {printf("<CB>");}
"{" {printf("<CB>");}
"}" {printf("<CCB>");}
"(" {printf("<P>");}
")" {printf("<CP>");}
";" {printf("<SEMICOLON>");}
"." {printf("<DOT>");}
[[:alpha:]_@][[:alnum:]_]+ {printf("<ID: %s>", yytext);}
["].+["] {printf("<LITERAL: %s>", yytext);}
%% 
  
int yywrap(){} 
int main(){ 
    yylex(); 
    return 0; 
}
