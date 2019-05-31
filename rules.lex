%{ 
%} 
  
%% 
class {printf("<CLASS>");}
using {printf("<USING>");}
namespace {printf("<NAMESPACE>");}
static {printf("<STATIC>");}
void {printf("<VOID>");}
"//".*\n {printf("");}
[" "\t\n] {printf("");} 
"{" {printf("<K>");}
"}" {printf("<CK>");}
"(" {printf("<P>");}
")" {printf("<CP>");}
";" {printf("<SEMICOLON>");}
"." {printf("<DOT>");}
[[:alpha:][:lower:]]+ {printf("<ID: %s>", yytext);}
["].+["] {printf("<LITERAL: %s>", yytext);}
%% 
  
int yywrap(){} 
int main(){ 
  
// yywrap() - wraps the above rule section 
/* yyin - takes the file pointer  
          which contains the input*/
/* yylex() - this is the main flex function 
          which runs the Rule Section*/
// yytext is the text in the buffer 
  
    yylex(); 
    return 0; 
}
