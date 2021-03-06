/* 
 * SWB:APP Data Lab 
 * 
 * Levy Marlon Souza Santiago
 * 
 * bits.c - Arquivo fonte com suas soluções para o Lab.
 *          Este é o arquivo que você irá manipular e enviar para seu instrutor.
 *
 * ATENÇÃO: Não inclua a biblioteca <stdio.h>; ela confude o compilador dlc.
 * Você pode utilizar printf para depuração sem incluir <stdio.h>, você terá
 * apenas um "warning" do compilador. De forma geral, não é uma boa prática ignorar
 * os avisos do compilador, mas neste caso tudo bem.  
 */

#if 0
/*
 * Instruções para os estudantes:
 *
 * PASSO 1: Leia as instruções seguintes cuidadosamente.
 */

Você irá prover sua solução ao Data Lab pela edição da coleção
de funções neste arquivo fonte.

REGRAS PARA CODIFICAÇÃO DE INTEIROS:
 
  Troque a instrução "return" em cada função com uma ou mais linhas
  de código C que implementa a função. O seu código deve estar em
  conformidade ao seguinte estilo:
   
  int Funct(arg1, arg2, ...) {
      /* Breve descrição de como sua implementação funciona */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Cada "Expr" é uma expressão utilizando SOMENTE:  
  1. Inteiros constantes de 0 até 255 (0xFF), inclusive. Você não está
      autorizado a utilizar grandes constantes como 0xffffffff.
  2. Argumentos de funções e variáveis locais (sem variáveis e globais).
  3. Operações inteiras unárias ! ~
  4. Operações inteiras Binárias & ^ | + << >>
    
  Alguns dos problemas restrigem ainda mais o conjunto de operadores permitidos.
  Cada "Expr" pode consistir de múltiplos operadores. Você não está restrito à 
  um operador por linha.
  
  Você está expressamente proibido de:
  1. Usar qualquer estrutura de controle como if, do, while, for, switch, etc.
  2. Definir ou utilizar qualquer macro.
  3. Definir qualquer função adicional neste arquivo.
  4. Chamar qualquer função.
  5. Usar qualquer outro tipo de operação, tais como &&, ||, -, or ?:
  6. Usar qualquer tipo de casting.
  7. Usar qualque tipo de dado que não seja int. Isto implica que você não 
     pode utilizar arrays, estruturas, ou uniões.

 
  Você deve assumir que sua máquina:
  1. Utiliza a representação de inteiros em 32-bits e em complemento de 2.
  2. Realiza deslocamento aritmético à direita.
  3. Possui um comportamento inesperado quando um inteiro é deslocado por mais que
     o tamanho da palavra.

EXEMPLOS DE ESTILO DE CÓDIGO ACEITÁVEL:
  /*
   * pot2mais1 - retorna 2^x + 1, onde 0 <= x <= 31
   */
  int pot2mais1(int x) {
     /* explora a habilidade de deslocamentos calcular potências de 2 */
     return (1 << x) + 1;
  }

  /*
   * pot2mais4 - retorna 2^x + 4, onde 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* explora a habilidade de deslocamentos calcular potências de 2 */
     int resultado = (1 << x);
     resultado += 4;
     return resultado;
  }

REGRAS DE CODIFICAÇÃO PONTO FLUTUANTE

Para os problemas em que você irá implementar operações de ponto flutuante,
as regras de codificação são menos restritas. Você poderá utilizar controle 
de repetição e condicional. Você está permitido a utilizar ambos int e unsigned.
Você pode utilizar constantes arbitrárias inteiras e sem sinal.

Você está expressamente proibido de:
  1. Definir ou utilizar qualquer macro.
  2. Definir qualquer função adicional neste arquivo.
  3. Chamar qualquer função.
  4. Usar qualquer tipo de casting.
  5. Usar qualque tipo de dado que não seja int ou unsigned. Isto implica que você não 
     pode utilizar arrays, estruturas, ou uniões.
  6. Usar qualquer tipo de dados ponto flutuante, operações ou constantes.


NOTAS:
  1. Utilize o compilador (descrito na atividade) dlc (data lab checker) para 
     checar a legalidade de suas soluções.
  2. Cada função tem um número máximo de operadores (! ~ & ^ | + << >>)
     que você está permitido utilizar para implementação de sua função. 
     A contagem de operadores máxima é conferida pelo dlc. Note que '=' não é 
     contado; você pode utilizar quantos forem necessários sem penalidade.
  3. Use a ferramenta btest para testar a corretude de suas funções.
  4. Use BDD checker para verificar formalmente suas funções.
  5. O número máximo de operações para cada função é dada no comentário do
     cabeçalho de cada função. Se houver qualquer inconsistência entre o número
     máximo de operações entre a atividade (pdf) e este arquivo, considere este
     arquivo com referência.

/*
 * PASSO 2: Modifique as seguintes funções de acordo as regras de codificação.
 * 
 *   IMPORTANTE. PARA EVITAR SURPRESAS NA NOTA:
 *   1. Utilize o compilador dlc para conferir que sua solução está conforme a 
 *      as regras de codificação.
 *   2. Use o BDD checker para formalmente verificar que sua solução produz 
 *      as respostas corretas.
 */


#endif
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 8.0.0.  Version 8.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2014, plus Amendment 1 (published
   2015-05-15).  */
/* We do not support C11 <threads.h>.  */
/* 
 * binNOU - ~(x|y) usando somente ~ and & 
 *   Exemplo: binNOU(0x6, 0x5) = 0xFFFFFFF8
 *   Operadores Permitidos: ~ &
 *   Max ops: 8
 *   Nível: 1
 */
int binNOU(int x, int y) {
  /*
  	Aplicação de uma propriedade lógica,
  	negação de um 'or' entre duas variáveis é igual à
  	um 'and' entre a negação dessas duas variáveis.
  */
  return ~x & ~y;
}
/* 
 * bitsPares - retorna 1 se todos os bits pares na palavra são 1
 *   Exemplos: bitsPares(0xFFFFFFFE) = 0, bitsPares(0x55555555) = 1
 *   Operadores permitidos: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Nível: 2
 */
int bitsPares(int x) {
  /*
	É utilizada uma máscara 0x55 para fazer operações & com o valor de x dado
	e depois com os seus respectivos deslocamentos de 8 bits a mais (até >> 24) para a direita.
	
	Todas estas operações vão sendo guardadas na variável 'res' que irá ser reescrita
	três vezes por um '&' entre o seu valor anterior e o '&' entre o deslocamento de x
	a cada 8 bits e a máscara. No fim da ultima reescrita, teremos varrido todos os bits de x,
	pois depois de deslocar o x 24 bits para a direita, estaremos realizando a operação com
	os oito bits mais significativos de x.

	Se todos os bits pares de x for 1, então o resultado ('res') é a própria máscara,
	senão, o resultado é diferente da máscara. 

	Por isso, é feito um 'xor' no fim. Se o resultado for igual à máscara,
	então o 'xor' resultará em zero, se o resultado for diferente da máscara,
	então o 'xor' resultará em diferente de zero. Negando essa saída com '!', temos o
	resultado correto.
  */
  int res = x & 0x55;
  
  res &= 0x55 & (x >> 8);
  res &= 0x55 & (x >> 16);
  res &= 0x55 & (x >> 24);

  return !(res ^ 0x55);
}
/* 
 * mascaraBit - Gera uma mascara consistindo de todos os bits altos e baixos de 1's 
 *   Exemplos: mascaraBit(5,3) = 0x38
 *   Assuma 0 <= baixo <= 31, and 0 <= alto <= 31
 *   Se baixo > alto, então a mascara deverá ter 0's
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int mascaraBit(int alto, int baixo) {
  /*
  	É gerada uma mascara 0xFFFFFFFF a partir de outra máscara 0x1.

  	Depois é dado um deslocamento à esquerda da máscara de 'alto' bits seguido
  	de outro deslocamento à esquerda de 1 bit, isso por que a contagem de bits
  	inicia-se do 0. Esse valor é guardado em 'inicio'. 
  	Posteriormente é dado um deslocamento na mesma máscara de 'baixo' bits, e esse
  	valor é guardado em 'fim'.

  	Por fim só é feito um 'xor' entre as duas variáveis resultantes. Porém, existe
  	o caso de 'alto' ser menor do que 'baixo', por isso foi adicionado um '&' do
  	resultado final com a variável fim, pois se o segundo deslocamento foi maior do
  	que o primeiro, então o resultado de (inicio ^ fim) & fim vai ser 0x0.
  	
  	Exemplo:

  	mascaraBit(5,3):
  		//Obtendo a máscara
  		m = 0000 0000 0000 0000 0000 0000 0000 0001
  		m = << 31 => 1000 0000 0000 0000 0000 0000 0000 0000
  		m = >> 31 => 1111 1111 1111 1111 1111 1111 1111 1111

  		//Andamos até o bit '5'
  		inicio = 			1111 1111 1111 1111 1111 1111 1100 0000 

		//Andamos até o bit 2, pois a partir do bit 3, já devem aparecer os bits 1's
  		fim = 				1111 1111 1111 1111 1111 1111 1111 1000
  		
  		//Operação xor entre os valores resultantes
  		(inicio ^ fim) = 	0000 0000 0000 0000 0000 0000 0011 1000
		
		//Operação & com o fim
		(inicio ^ fim) & fim = 0000 0000 0000 0000 0000 0000 0011 1000 = 0x38
  */

  int m = 0x1, inicio, fim;
  m = m << 31;
  m = m >> 31;
  inicio = m << alto << 1;
  fim = m << baixo;

  return (inicio ^ fim) & fim;
}
/*
 * binParidade - retorna 1 se x contém uma número ímpar de 0's
 *   Exemplos: binParidade(5) = 0, binParidade(7) = 1
 *   Operadores Permitidos: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Nível: 4
 */
int binParidade(int x) {
  return 2;
}
/* 
 * maiorPosicaoBit - retorna uma macara que marca a posição do bit 1
 *               mais significante. Se x == 0, retorna 0
 *   Exemplo: maiorPosicaoBit(96) = 0x40
 *   Operadores Permitidos: ! ~ & ^ | + << >>
 *   Max ops: 70
 *   Nível: 4 
 */
int maiorPosicaoBit(int x) {
  return 2;
}
/* 
 * cabeShort - retorna 1 se x pode ser representado como um 
 *   inteiro de 16-bit, em complemento de dois.
 *   Exemplo: cabeShort(33000) = 0, cabeShort(-32768) = 1
 *   Operadores Permitidos: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Nível: 1
 */
int cabeShort(int x) {
  /*
  	A parte do número importante para se fazer a analise em questão são
  	os 16 ultimos números. Por isso, foi feito um deslocamento à esquerda
  	de 16 bits do número x para descartar a primeira parte do número.

  	Para retornar os 16 bits menos significantes ao seu lugar, foi feito
  	um deslocamento de 16 bits à direita. Isso deixa os primeiros bits sendo
  	0000 0000 0000 0000 ou 1111 1111 1111 1111 e os 16 bits à direita com a metade
  	direita de x.

  	Depois é só aplicar um xor bit a bit entre o resultado final e o x. Se o
  	resultado for diferente de 0 então o x não pode ser representado como um
  	inteiro de 16 bits, se o resultado for 0 então ele pode ser representado.
  */
  int res = x << 16;
  res = res >> 16;

  return !(res ^ x);
}
/* 
 * sinal - retorna 1 se positivo, 0 se zero, e -1 se negativo
 *  Exemplo: sinal(130) = 1
 *            sinal(-23) = -1
 *  Operadores Permitidos: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Nível: 2
 */
int sinal(int x) {
	/*
		Primeiro guardamos a verificação se x é diferente de zero.

		Depois é feito um '&' entre o x e o resultado da verificação
		dando um deslocamento à esquerda de 31 bits, o que vai fazer
		com que seja um '&' entre x e 0 ou x e CMIN.

		Essa operação vai nos resultar em CMIN se x for negativo,
		0 se x for positivo ou zero.

		É feito um deslocamento à direita do resultado anterior de 31 bits,
		pois se x for negativo, então o resultado anterior que era CMIN se
		torna -1 = 0xFFFFFFFF. Se ele for positivo ou zero, o resultado
		continua sendo zero.

		No fim, basta fazer um ou entre o resultado da verificação inicial
		e o resultado final da operação. Isso irá resolver o resultado final.
		Se x for negativo o 'res' resulta em -1, então res | isNtZero(0xFFFFFFFF) = -1;
		Se x for positivo o 'res' resulta em 0, então res | isNtZero(0x1) = 1;
		Se x for zero o 'res' resulta em 0, então res | isNtZero(0x0) = 0;
	*/
    int isNtZero = !!x; // 1 se x != 0
    int res;
    res = x & (isNtZero << 31);
    res = res >> 31;

    return res | isNtZero;
}
/* 
 * diferente - retrona 0 se x == y, e 1 caso contrário 
 *   Exemplos: diferente(5,5) = 0, diferente(4,5) = 1
 *   Operadores Permitidos: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Nível: 2
 */
int diferente(int x, int y) {
  /*
	Se um número é igual ao outro, então se for feito um xor bit a bit entre eles,
	resultará em 0. Senão, resultará em um número diferente de zero. Por isso,
	para resolver este problema, foi feito um xor bit a bit entre os números x e y,
	e depois este resultado foi negado duas vezes com '!'.

	Se x ^ y == 0 então x == y então !!(x ^ y) = 0
	Se x ^ y != 0 então x != y então !!(x ^ y) = 1
  */
  return !!(x ^ y);
}
/* 
 * negativo - retorna 1 se x < 0, retorna 0 caso contrário 
 *   Exemplo: negativo(-1) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Nível: 2
 */
int negativo(int x) {
  /*
  	Se o x < 0, então seu bit de sinal é 1. Se x >= 0 então seu bit de sinal é 0.
  	Foi gerado uma máscara CMIN com deslocamento à esquerda do 0x1 de 31 bits.
  	Depois foi realizada uma operação '&' entre x e a máscara (CMIN).

  	Se x < 0 então o resultado da operação vai ser CMIN.
  	Se x >= 0 então o resultado da operação vai ser 0.

  	Negando o resultado final duas vezes com o '!' temos:

  	Se x < 0 então o retorno vai ser 1.
  	Se x >= 0 então o retorno vai ser 0.
  */
  return !!((x & (0x1 << 31)));
}
/* 
 * respot2 - Calcula x%(2^n), para 0 <= n <= 30
 *   Argumentos negativos deverão resultar em restos negativos
 *   Exemplos: respot2(15,2) = 3, respot2(-35,3) = -3
 *   Operadores Permitidos: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Nível: 3
 */
int respot2(int x, int n) {
    int neg = x & (0x1 << 31); // 1 se x < 0
    int powerTwo = 1 << n;
    int r = x >> powerTwo;
    r = r << powerTwo;
    r = r + (~x + 1);
    r = neg + r;

    return r;
}
/* 
 * menor - Se x < y  então retorna 1, caso contrário retorna 0 
 *   Exemplo: menor(4,5) = 1.
 *   Operadores Permitidos: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Nível: 3
 */
int menor(int x, int y) {
  int m = 0x1 << 31;
  int sinalX = x & m;
  int sinalY = y & m;
  int ret;
  sinalX = sinalX >> 31;
  sinalY = sinalY >> 31;
  x = ~(x + sinalX);
  y = ~(y + sinalY);
  ret = y + (~x + 1);

  ret = !((!ret) | (ret >> 31));

  return ret;
}
/* 
 * cd2ms - Converte de complemento de 2 para magnitude do sinal, 
 *   onde o MSB é o bit de sinal
 *   Você pode assumir que x > TMin
 *   Exemplo: cd2ms(-5) = 0x80000005.
 *   Operadores Permitidos: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Nível: 4
 */
int cd2ms(int x) {
  return 2;
}
/* 
 * mod_float - Retorna o equivalente em nível de bit do valor absoluto
 *   de f para o argumento f ponto flutuante.
 *   Ambos, argumento e resultado são passados como int's, mas 
 *   eles são reinterpretados como representações ao nível de bit de valores
 *   ponto flutuante de precisão simples.
 *   Quando o argumento é NaN, retorne o argumento..
 *   Operadores Permitidos: Qualquer operações de integer/unsigned incluindo. ||, &&. também if, while
 *   Max ops: 10
 *   Nível: 2
 */
unsigned mod_float(unsigned uf) {
  return 2;
}
/* 
 * meio_float - Retorna a nível de bit o equivalente da expressão 0.5*f
 *   para o argumento f ponto flutuante. Ambos, arumento resultado são
 *   passados como unsigned int's, mas eles são interpretados com a 
 *   representação ao nível de bit de um valor ponto flutuante de precisão simples
 *   Quando o argumento é NaN, retorne o argumento. 
 *   Legal ops: Qualquer operações integer/unsigned incluindo ||, &&. também if, while
 *   Max ops: 30
 *   Nível: 4
 */
unsigned meio_float(unsigned uf) {
  return 2;
}
/* 
 * floatInteiro_float - Retorna a nível de bit o equivalente da representação
 *   da expressão (int) f para o argumento f ponto flutuante.
 *   O argumento é passado como unsigned int, mas ele é interpretado com a 
 *   representação ao nível de bit de um valor ponto flutuante de precisão simples
 *   Qualquer valor fora do range (incluindo NaN e infinito) deverá retornar
 *   0x80000000u.
 *   Operadores Permitidos: Qualquer operação integer/unsigned incluindo ||, &&. também if, while
 *   Max ops: 30
 *   Nível: 4
 */
int floatInteiro_float(unsigned uf) {
  return 2;
}
