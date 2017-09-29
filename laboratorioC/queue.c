/*
 * Código para diagnostico de conhecimento básico em C.
 * Desenvolvido para o curso CET-088, CET-082
 * Modificado por Leard Fernandes, 2017
 * Developed by R. E. Bryant, 2017
*/

 /*
  * Este programa implementa uma fila que suporta ambas as operações FIFO e LILO.
  *
  * Ele utiliza uma lista unicamente ligada para representar o conjunto de
  * elementos da fila
*/

#include <stdlib.h>
#include <stdio.h>

#include "harness.h"
#include "queue.h"

/*
  Cria uma fila vazia.
  Retorna NULL se o espaço nao puder ser alocado.
*/
queue_t *q_new()
{
    queue_t *q =  malloc(sizeof(queue_t));
    if(q == NULL){
    	return NULL;
    }
    q->size = 0;
    q->head = NULL;
    q->tail = NULL;
    return q;
}

/*  Libera todo o espaço utilizado pela fila. */
void q_free(queue_t *q)
{
	if(q != NULL){
		list_ele_t *aux = q->head;

	    while(aux != NULL){
	    	q->head = q->head->next;
	    	free(aux);
	    	aux = q->head;
	    }

	    /* Libera a estrutura da fila */
	    free(q);
	}
}

/*
  Tenta inserir o elemento na cabeça da fila.
  Retorna true se houve sucesso
  Retorna false se q é NULL ou não foi possível alocar espaço
*/
bool q_insert_head(queue_t *q, int v)
{
    list_ele_t *newh;
    if(q == NULL){
    	return false;
    }
    newh = malloc(sizeof(list_ele_t));
    if(newh == NULL){
    	return false;
    }

    newh->value = v;
    newh->next = q->head;
    q->head = newh;
    q->size++;
    if(q->size == 1){
    	q->tail = q->head;
    }

    return true;
}


/*
  Tenta inserir o elemento na calda da fila.
  Retorna true se houve sucesso
  Retorna false se q é NULL ou não foi possível alocar espaço
*/
bool q_insert_tail(queue_t *q, int v)
{
	list_ele_t* newh;
	if(q == NULL){
		return false;
	}
	newh = malloc(sizeof(list_ele_t));
	if(newh == NULL){
		return false;
	}
	newh->value = v;
	newh->next = NULL;
	if(q->tail != NULL){
		q->tail->next = newh;
	}else{
		q->head = newh;	
	}
	q->tail = newh;
	q->size++;

    return true;
}

/*
  Tenta remover o elemento na cabeça da fila.
  Retorna true se houve sucesso
  Retorna false se q é NULL ou vazia
  Se vp é não-NULL e o elemento removido, armazena o valor removido em *vp
  Qualquer armazenamento não utilizado deve ser liberado
*/
bool q_remove_head(queue_t *q, int *vp)
{
    if(q == NULL || q->head == NULL){
    	return false;
    }
    if(vp != NULL){
    	*vp = q->head->value;
    }
	list_ele_t *aux;

	
	aux = q->head;
	q->head = q->head->next;
	free(aux);
	q->size--;
	if(q->size == 0){
		q->head = NULL;
		q->tail = NULL;
	}
    return true;
}

/*
  Retorna o número de elementos na fila.
  Retorna 0 se q é NULL ou vazia
*/
int q_size(queue_t *q)
{
	if(q != NULL && q->head != NULL){
		return q->size;
	}
    return 0;
}

/*
  Inverte os elementos na fila.

  Sua implementação não dever alocar ou liberar quaisquer elementos (e.g., pela
  chamada de q_insert_head ou q_remove_head). Ao invés disso, ela deverá
  modificar os ponteiros na estrutura de dados existente.
*/
void q_reverse(queue_t *q)
{
    if(q != NULL && q->head != NULL){
    	if(q->size > 1){
    		list_ele_t *antJumper = q->head;
	    	list_ele_t *jumper = antJumper->next;

	    	/*Caminhando até o fim da fila, a partir do segundo elemento,
	    	colocando cada nó apontado por jumper como o head da fila*/
	    	while(jumper != NULL){
	    		antJumper->next = jumper->next;
	    		jumper->next = q->head;
	    		q->head = jumper;

	    		jumper = antJumper->next;
	    	}
	    	q->tail = antJumper;
	    }
	}
}
