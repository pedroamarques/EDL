Icon (Linguagem de programação)
=======
 
### Origens e Influências
A linguagem Icon é derivada da linguagem SNOBOL. Foi desenvolvida em 1977 na Universidade do Arizona por professores e funcionários. A sintaxe se parece muito com C e mais especificamente com PASCAL porém, ao contrário dessas, Icon é uma linguagem de alto nível. Icon futuramente veio a inspirar linguagens como Python e Lua.

Esta [linha do tempo](http://alumni.cs.ucr.edu/~vladimir/cs181/PLchart.png) demonstra mais precisamente de onde a linguagem Icon surgiu.
 
### Classificação
Icon é uma linguagem que pode ser classificada nos seguintes aspectos:
* Imperativa
* Dinâmica
* Tipagem Fraca

### Comparação com outras linguagens

Primeiramente é bom explicitar que a estrutura de controle do Icon é baseado em um principios: O de sucesso e falha, algo que o diferencia das linguagens que usam números booleanos para o mesmo. Como exemplo digamos que exista uma função _if text := read() then write (text)_, se a variável _text_ tiver alguma string dentro dela, essa string será imprimida, porém se o arquivo não existir, ao invés do programa exibir um erro, ele irá executar, o Idol irá verificar que _text := read()_ não conseguiu ser executado e a instrução inteira será pulada, deixando o resto do programa livre para executar sem a exibição de um erro.

Icon tem Writeability e Readability em níveis iguais aos do C, e é mais expressiva do que o mesmo, como por exemplo no tratamento de strings, porém vale lembrar que Icon é uma linguagem fracamente tipada e dinâmica, algo que faria a conversão para C trabalhosa.

Em comparação com o Python, outra linguagem de alto nível, a Icon perderia no conceito de Writeability, dando como exemplo a declaração inicial de variáveis, pois apesar de não ter que declarar tipos especificos, ainda é necessário declarar quais variáveis serão usadas. No conceito de Readability os dois estariam empatados, com o Icon sendo levemente mais legível nas suas funções pois costumam ser palavras da lingua inglesa de facil correlação com sua utilidade (Write, Read, Find), porém seu sistema de coorelação aritimética é um pouco complicado de entender, se tiver como base linguagens variadas do C.

**Exemplo 1(C e Icon):**

_Programa em C:_

    int main(void) {
	    char text[50], c;
	    text[0]='\0';
	    gets(text);
	    c = text[0];
	    if(c != '\0'){
		    printf("%s", text);
	    }
	    else{
		    printf("A string input está vazia!");
	    }
    }

_Programa em Icon_

    procedure main()
          local text                
          if  ( text  :=  read ( ) )  then   
                write ( text )                   
          else                               
                write ( "A string input está vazia!" );
    end


**Exemplo 2(Python e Icon):**

_Programa em Python:_

    soma = 0
    for i in range (1,6):
        soma = soma+i
    print("A soma de todos os números de 1 até 5 é: " + str(soma))
    
_Programa em Icon_

    procedure main()
          local i, soma
          sum  :=  0;
          every  n := 1 to 5  do
                sum  :=  sum + n;
          write ( "A soma de todos os números de 1 até 5 é: ", soma );
    end

 O Icon conta também com uma facilidade no quesito de manipulação de strings e substrings. Abaixo temos 2 exemplos de como é feita essa manipulação.
 
 _Alteração de Strings_
 
     s := "Olá"
     s[2] := "777"   
     agora s contém a string "O777á"
     s := "abcd"
     s[2:4] := "12345"  
     agora s tem o valor "a12345d", e note que quando usado s[2:4], o 2 é inclusive e o 4 exclusive
     s := "Amarelo Azul";
     s[8:13] := "";
     agora s tem o valor "Amarelo"
     
_Busca de Substrings_

    s := "Amarelo Azul";
    s ? write(find("Az"))
    nesse caso a função write irá imprimir o número 9, que é a posição do primeiro caractére procurado na string
 