programa
{	/*Ex073: Faça um programa que mostre a uma
	contagem personalizada na tela, utilizando
	uma função chamada contagem().
	Empresa: Estudonauta */
	inclua biblioteca Util

	funcao vazio contagem(inteiro i, inteiro f, inteiro p) {
		escreva("------- CONTANDO DE " + i + " ATÉ " + f + " -------\n")
		para(inteiro cont = i; cont <= f; cont += p) {
			escreva(cont)
			Util.aguarde(200)
			escreva(" -> ")
			Util.aguarde(200)
			}
			escreva("FIM!\n\n")
		}
	funcao inicio()
	{
		contagem(0, 10, 2)
		contagem(10, 50, 5)
		contagem(10, 2, 1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 551; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */