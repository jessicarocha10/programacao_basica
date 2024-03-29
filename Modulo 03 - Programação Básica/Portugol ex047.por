programa
{	/* Ex047: Faça um programa que crie uma contagem personalizada pelo
	usuário, que vai indicar o inicio, o fim e o passo da contagem.
	ATENÇÃO ! Considere os casos onde haja uma contagem regressiva também! 
	Autor: Gustavo Guanabara
	Empresa: Estudonauta */
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro ini, fim, pas
		escreva("==== CONTAGEM PERSONALIZADA ====\n")
		escreva("INÍCIO = ")
		leia(ini)
		escreva("FIM = ")
		leia(fim)
		escreva("PASSO = ")
		leia(pas)
		se (pas <=0) pas *= -1
		se (ini < fim) {
			para (inteiro c = ini; c <= fim; c += pas) {
				escreva(c + "... ")
				u.aguarde(300)		
			}
		} senao {
			para (inteiro c = ini; c >= fim; c -= pas) {
				escreva(c + "... ")
				u.aguarde(300)
			}
		}
		escreva("FIM! \n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 771; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */