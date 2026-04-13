# A3Compiladores

Um projeto simples que demonstra o funcionamento de um compilador com analisadores léxico, semântico e sintáxico e com geradores. Transforma um código simples (em português) a partir do input.txt em linguagem C++. 

Compile o programa: 
`$ make` 

Crie um arquivo input.txt (segue um exemplo) e rode o programa:
`$ ./programa`

Será criado o arquivo output.cc que contém um código C++. 

Os tokens aceitos pela gramática do compilador: 
<pre>
token	 =	 <inteiro> ::= [0-9]+
		     <flutuante> ::= [0-9]+ ou [0-9]+.[0-9]+
		     <banana> ::= "[^"]*"	
		     [A-Za-z]+ ::= [0-9]+ ou  [0-9]+.[0-9]+ ou "[^"]*"
		     <se> (expr) {token}
		     <se> (expr) <senao> {token}
		     <enquanto> (expr) {token}
		     <para> (exprPara) {token}
		     ø
expr	=	variável == [0-9]+ ou "[^"]*"
		    variável != [0-9]+ ou "[^"]*"
		    variável >= [0-9]+ ou "[^"]*"
		    variável =< [0-9]+ ou "[^"]*"
		    variável > [0-9]+ ou "[^"]*"
		    variável < [0-9]+ ou "[^"]*"
exprPara = 	<inteiro> variavel, variavel < [0-9]+, variavel++ 	
variável  =	[A-Za-z0-9]
</pre>
  
**Token inteiro:** 
Representa um valor int positivo de 16-bits. Recebe números de até 2,147,483,647. Pode ser apenas declarado ou declarado e inicializado. 
Apenas declaração:
inteiro x; 
Declaração e inicialização: 
inteiro x = 99; 
OBS. O token deve ser grafado corretamente e é necessário ter um espaço entre o token e a variável (neste exemplo, usamos a variável x). Além disso, deve-se terminar com o ponto e vírgula (;). 

**Token flutuante:**
Representa um valor inteiro ou float (decimal, ou seja, com ponto flutuante) positivo de até 3.4×10^38. Pode ser apenas declarado ou declarado e inicializado. 
Apenas declaração:
flutuante y;
Declaração e inicialização (com ponto flutuante):
flutuante y = 9.9;  
Declaração e inicialização (sem ponto flutuante):
flutuante y = 9; 

OBS. O token deve ser grafado corretamente e é necessário ter um espaço entre o token e a variável (neste exemplo, usamos a variável y). Além disso, deve-se terminar com o ponto e vírgula (;). 

**Token banana:** 
Representa uma string. Pode ser apenas declarado ou declarado e inicializado. 
Apenas declaração:
banana z;
Declaração e inicialização: 
banana z = “compiladores123”;
OBS. O token deve ser grafado corretamento e é necessário ter um espaço entre o token e a variável (neste exemplo, usamos a variável z). Além disso, deve-se terminar com o ponto e vírgula (;). 

**Inicialização de variáveis já declaradas:**
Pode-se inicializar variáveis já declaradas. Considerando x, y e z, resepectivamente, inteiro, flutuante e banana:
x = 1;
y = 2; ou y = 1.2; 
z = “olá mundo”; 

**Tokens se e se senão:**
No token se é necessário uma expressão entre parênteses e depois chaves com outro token. No se senão, após as chaves há o senão e depois outras chaves com outro token. 

**Token enquanto:**
No token enquanto é necessário uma expressão entre parênteses e depois chaves com outro token. 

**Token para:**
No token para é necessário uma expressão específica entre parênteses e depois chaves com outro token. 



