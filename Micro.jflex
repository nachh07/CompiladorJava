package ar.edu.ub.dc.compilador_micro;

import java_cup.runtime.Symbol;

%%

%public

%class Scanner

%standalone

%cup

%line

%column

Digito = [0-9]

Letra = [a-zA-Z]

ID = {Letra}({Letra}|{Digito})*

%%

"I" {return new Symbol(sym.INICIO);}
"INICIO" {return new Symbol(sym.INICIO);}
"Inicio" {return new Symbol(sym.INICIO);}
"inicio" {return new Symbol(sym.INICIO);}

"ESCRIBIR" {return new Symbol(sym.ESCRIBIR);}
"Escribir" {return new Symbol(sym.ESCRIBIR);}
"escribir" {return new Symbol(sym.ESCRIBIR);}

"F" {return new Symbol(sym.FIN);}
"FIN" {return new Symbol(sym.FIN);}
"Fin" {return new Symbol(sym.FIN);}
"fin" {return new Symbol(sym.FIN);}

"+" { return new Symbol(sym.MAS); }
"-" { return new Symbol(sym.MENOS); }
"*" { return new Symbol(sym.POR); }
"/" { return new Symbol(sym.DIVIDIDO); }
":=" { return new Symbol(sym.ASIGN); }
"," { return new Symbol(sym.COMA); }
"%" { return new Symbol(sym.MODULO); }
";" { return new Symbol(sym.PUNTOYCOMA); }
"(" { return new Symbol(sym.P_ABRE); }
")" { return new Symbol(sym.P_CIERRA); }
[:digit:]+ { return new Symbol(sym.NUMERO, new Integer(yytext())); }
[ \t\r\n]+ {;}

{ID} { return new Symbol(sym.ID, yytext()); }
. { System.out.println("Error lexico."+yytext()+"-"); }