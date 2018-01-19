/***************************************************************************
 * Dr. Evil's Insidious Bomb, Version 1.1
 * Copyright 2011, Dr. Evil Incorporated. All rights reserved.
 *
 * LICENSE:
 *
 * Dr. Evil Incorporated (o PERPETRADOR) concede a você (a VITIMA) permissão
 * explícita para usar esta bomba (a BOMBA). Esta é uma licença limitada no
 * tempo, que expira na morte da VITIMA. O PERPETRADOR não se responsabiliza
 * por danos, frustração, insanidade, olhos saltados, síndrome do túnel do 
 * carpo, perda de sono ou outros danos à VITIMA, a menos que o PERPETRADOR 
 * deseje ter crédito disto. A VITIMA não pode distribuir este código fonte
 * para qualquer inimigo do PERPETRADOR. Nenhuma VITIMA pode depurar, 
 * realizar engenharia reversa, executar "strings", descompilar, 
 * descriptografar ou usar qualquer outra técnica para obter conhecimento 
 * e desativar a BOMBA. A roupa à prova de BOMBA pode não ser usada ao 
 * manusear este programa. O PERPETRADOR não pedirá desculpas pelo pobre 
 * senso de humor do PERPETRADOR. Esta licença é nula e sem efeito, onde a 
 * BOMBA é proibida por lei.
 ***************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "support.h"
#include "phases.h"

/* 
 * Nota mental: Lembre-se de apagar este arquivo para que minhas vítimas não 
 * tenham idéia do que está acontecendo, e assim todos eles explodirão numa
 * espectacular explosão diabólica. - Dr. Evil
 */

FILE *infile;

int main(int argc, char *argv[])
{
    char *input;

    /* Note to self: remember to port this bomb to Windows and put a 
     * fantastic GUI on it. */

    /* When run with no arguments, the bomb reads its input lines 
     * from standard input. */
    if (argc == 1) {  
	infile = stdin;
    } 

    /* When run with one argument <file>, the bomb reads from <file> 
     * until EOF, and then switches to standard input. Thus, as you 
     * defuse each phase, you can add its defusing string to <file> and
     * avoid having to retype it. */
    else if (argc == 2) {
	if (!(infile = fopen(argv[1], "r"))) {
	    printf("%s: Error: Couldn't open %s\n", argv[0], argv[1]);
	    exit(8);
	}
    }

    /* You can't call the bomb with more than 1 command line argument. */
    else {
	printf("Uso: %s [<input_file>]\n", argv[0]);
	exit(8);
    }

    /* Do all sorts of secret stuff that makes the bomb harder to defuse. */
    initialize_bomb();

    printf("Bem-vindo à minha pequena bomba diabólica. Você tem\n");
    printf("6 fases para se explodir. Tenha um bom dia!\n");

    /* Hmm...  Six phases must be more secure than one phase! */
    input = read_line();             /* Get input                   */
    phase_1(input);                  /* Run the phase               */
    phase_defused();                 /* Drat!  They figured it out!
				      * Let me know how they did it. */
    printf("Fase 1 desativada. E a próxima?\n");

    /* The second phase is harder.  No one will ever figure out
     * how to defuse this... */
    input = read_line();
    phase_2(input);
    phase_defused();
    printf("Essa é a número 2. Continue!\n");

    /* I guess this is too easy so far.  Some more complex code will
     * confuse people. */
    input = read_line();
    phase_3(input);
    phase_defused();
    printf("Metade do caminho!\n");

    /* Oh yeah?  Well, how good is your math?  Try on this saucy problem! */
    input = read_line();
    phase_4(input);
    phase_defused();
    printf("Você conseguiu. Tente este...\n");
    
    /* Round and 'round in memory we go, where we stop, the bomb blows! */
    input = read_line();
    phase_5(input);
    phase_defused();
    printf("Bom trabalho! Vamos ao próximo...\n");

    /* This phase will never be used, since no one will get past the
     * earlier ones.  But just in case, make this one extra hard. */
    input = read_line();
    phase_6(input);
    phase_defused();

    /* Wow, they got it!  But isn't something... missing?  Perhaps
     * something they overlooked?  Mua ha ha ha ha! */
    
    return 0;
}
