%{
  import java.io.*;
%}

%token OPEN_PAREN_T;
%token CLOSE_PAREN_T;
%token OPEN_PAREN_Q;
%token CLOSE_PAREN_Q;
%token <sval> SKIP;

%start s

%%

parens  : OPEN_PAREN_T s CLOSE_PAREN_T
        | OPEN_PAREN_T CLOSE_PAREN_T
        | OPEN_PAREN_Q s CLOSE_PAREN_Q
        | OPEN_PAREN_Q CLOSE_PAREN_Q

exp     : parens

exps    : exp SKIP { System.out.println("S: "+$2); }
        | exp

s       : SKIP {
                String stringa = $1;
                int i=0;
                int colonNumber = 0;
                if($1.charAt(i)==':'){
                  while($1.charAt(i)==':')
                    ++i;
                  if(i%2==0)
                    System.out.println(stringa.substring(i));
                  else
                    System.out.println(stringa.substring(i-1));
                }
                else if (Character.isUpperCase(stringa.charAt(0))){
                  if(stringa.charAt(0)!=stringa.charAt(1))
                    System.out.println("Err: ");
                  System.out.println(stringa.substring(2));
                }
                else
                  System.out.println(stringa);
                }
        | exps
        | s exps

%%
void printString(String stringa){}
void yyerror(String s)
{
 System.out.println("err:"+s);
 System.out.println("   :"+yylval.sval);
}

static Yylex lexer;
int yylex()
{
 try {
  return lexer.yylex();
 }
 catch (IOException e) {
  System.err.println("IO error :"+e);
  return -1;
 }
}

public static void main(String args[])
{
 System.out.println("[Quit with CTRL-D]");
 Parser par = new Parser();
 lexer = new Yylex(new InputStreamReader(System.in), par);
 par.yyparse();
}
