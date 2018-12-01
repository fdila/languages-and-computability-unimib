
%%

%byaccj

%{
  /* store a reference to the parser object */
  private Parser yyparser;

  /* constructor taking an additional parser object */
  public Yylex(java.io.Reader r, Parser yyparser) {
    this(r);
    this.yyparser = yyparser;
  }
%}

%%

"("                   { yyparser.yylval = new ParserVal(""+yycharat(0));
                        return Parser.OPEN_PAREN_T; }
")"                   { yyparser.yylval = new ParserVal(""+yycharat(0));
                        return Parser.CLOSE_PAREN_T; }
"["                   { yyparser.yylval = new ParserVal(""+yycharat(0));
                        return Parser.OPEN_PAREN_Q; }
"]"                   { yyparser.yylval = new ParserVal(""+yycharat(0));
                        return Parser.CLOSE_PAREN_Q; }
:*[a-z]+                { yyparser.yylval = new ParserVal(yytext());
                        return Parser.SKIP; }
[A-Z]{2}[a-z]+        { yyparser.yylval = new ParserVal(yytext());
                        return Parser.SKIP; }
[^] {} /*butta il resto*/
