package codigo;

%%
%public
%class Lexer
%{
 
 
 private boolean _existenTokens = false;
 
 public boolean existenTokens(){
 return this._existenTokens;
 }
 
%}
 
 
%type Tokens
 
%init{
 /* CÃ³digo que se ejecutarÃ¡ en el constructor de la clase */
%init}
 
%eof{
 
 
 this._existenTokens = false;
 
%eof}
 

 
 Digito = [0-9]
Inicio = "inicio"|"INICIO"
Fin="fin"|"FIN"
Escribe="ESCRIBE"|"escribe"
Captura="captura"|"CAPTURA"
Imprime="imprime"|"Imprime"
Si="si"|"SI"
Entonces="entonces"|"ENTONCES"
Sino="SINO"|"sino"
Finsi="FINSI"|"finsi"
Acaso="acaso"|"ACASO"
Caso="caso"|"CASO"
Ninguno="ninguno"|"NINGUNO"
Fincaso="fincaso"|"FINCASO"
Desde="DESDE"|"desde"
Hasta="hasta"|"HASTA"
Intervalo="intervalo"|"INTERVALO"
Findesde="findesde"|"FINDESDE"
Haz="haz"|"HAZ"
Mientras="mientras"|"MIENTRAS"
Finhaz="finhaz"|"FINHAZ"
Ejecuta="ejecuta"|"EJECUTA"
Hasta="hasta"|"HASTA"
Limpia="limpia"|"LIMPIA"
Ubica="ubica"|"UBICA"

 Numero = {Digito} {Digito}*
 Variable = [A-Za-z]
Caes= "." | "|" | ","| " '' "
Opar="+"|"-"|"/"|"*"|"^"
Opre="<"|">"|">="|"<="|"<>"
 Espacio = " "
 SaltoDeLinea = \n|\r|\r\n
 

 
%%

 
{Numero} {
 Tokens t = new Tokens("digito" + "   ");
 this._existenTokens = true; 
 return t;
}

{Inicio} { 
 Tokens t = new Tokens("PR01" + "    ");
 this._existenTokens = true;
 return t;
}
{Fin} { 
 Tokens t = new Tokens("PR02" + "    ");
 this._existenTokens = true;
 return t;
}
{Escribe} { 
 Tokens t = new Tokens("PR03" + "    ");
 this._existenTokens = true;
 return t;
}
{Captura} { 
 Tokens t = new Tokens("PR04" + "   ");
 this._existenTokens = true;
 return t;
}
{Imprime} { 
 Tokens t = new Tokens("PR05" + "    ");
 this._existenTokens = true;
 return t;
}
{Si} { 
 Tokens t = new Tokens("PR06" + "    ");
 this._existenTokens = true;
 return t;
}

{Entonces} { 
 Tokens t = new Tokens("PR07" + "    ");
 this._existenTokens = true;
 return t;
}
{Sino} { 
 Tokens t = new Tokens("PR08" + "    ");
 this._existenTokens = true;
 return t;
}
{Finsi} { 
 Tokens t = new Tokens("PR09" + "    ");
 this._existenTokens = true;
 return t;
}
{Acaso} { 
 Tokens t = new Tokens("PR10" + "    ");
 this._existenTokens = true;
 return t;
}
{Caso} { 
 Tokens t = new Tokens("PR11" + "    ");
 this._existenTokens = true;
 return t;
}
{Ninguno} { 
 Tokens t = new Tokens("PR12" + "    ");
 this._existenTokens = true;
 return t;
}
{Fincaso} { 
 Tokens t = new Tokens("PR13" + "    ");
 this._existenTokens = true;
 return t;
}
{Desde} { 
 Tokens t = new Tokens("PR14" + "    ");
 this._existenTokens = true;
 return t;
}
{Hasta} { 
 Tokens t = new Tokens("PR15" + "    ");
 this._existenTokens = true;
 return t;
}
{Intervalo} { 
 Tokens t = new Tokens("PR16" + "    ");
 this._existenTokens = true;
 return t;
}
{Findesde} { 
 Tokens t = new Tokens("PR17" + "    ");
 this._existenTokens = true;
 return t;
}
{Haz} { 
 Tokens t = new Tokens("PR18" + "    ");
 this._existenTokens = true;
 return t;
}
{Mientras} { 
 Tokens t = new Tokens("PR19" + "    ");
 this._existenTokens = true;
 return t;
}
{Finhaz} { 
 Tokens t = new Tokens("PR20" + "    ");
 this._existenTokens = true;
 return t;
}
{Ejecuta} { 
 Tokens t = new Tokens("PR21" + "    ");
 this._existenTokens = true;
 return t;
}

{Limpia} { 
 Tokens t = new Tokens("PR23" + "    ");
 this._existenTokens = true;
 return t;
}
{Ubica} { 
 Tokens t = new Tokens("PR24" + "    ");
 this._existenTokens = true;
 return t;
}
{Caes} { 
 Tokens t = new Tokens("CAES" + "    ");
 this._existenTokens = true;
 return t;
}
{Opar} { 
 Tokens t = new Tokens("OPAR" + "    ");
 this._existenTokens = true;
 return t;
}
{Opre} { 
 Tokens t = new Tokens("OPER" + "    ");
 this._existenTokens = true;
 return t;
}

 
{Variable} {
 Tokens t = new Tokens("variable" + "     ");
 this._existenTokens = true;
 return t;
}
 

 
{Espacio} {
 
}
 
{SaltoDeLinea} {
 Tokens t = new Tokens("\n");
 this._existenTokens = true;
 return t;
}