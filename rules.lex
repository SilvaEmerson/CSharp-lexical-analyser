i/*** Definition Section has one variable 
which can be accessed inside yylex()  
and main() ***/
%{ 
%} 
  
/*** Rule Section has three rules, first rule  
matches with capital letters, second rule 
matches with any character except newline and  
third rule does not take input after the enter***/
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
[A-Za-z]+ {printf("<ID: %s>", yytext);}
" {printf("<QUOTES>");}
""".+""" {printf("<LITERAL, %s>", yytext);}
%% 
  
int yywrap(){} 
int main(){ 
  
// Explanation: 
// yywrap() - wraps the above rule section 
/* yyin - takes the file pointer  
          which contains the input*/
/* yylex() - this is the main flex function 
          which runs the Rule Section*/
// yytext is the text in the buffer 
  
// Uncomment the lines below  
// to take input from file 
// FILE *fp; 
// char filename[50]; 
// printf("Enter the filename: \n"); 
// scanf("%s",filename); 
// fp = fopen(filename,"r"); 
// yyin = fp; 
  
yylex(); 
return 0; 
}
