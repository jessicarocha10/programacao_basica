programa
{ /* Ex067:Faça um programa que preencha uma matriz 5x5 
	com números sorteados. Depois mostre a matriz na tela
	e por fim calcule:
	- A média entre todos os valores sorteados
	- Quais são os valores que estão na 2° linha
	e estão acima da média
	-  Quais são os valores que estão na 3° coluna
	e estão abaixo da média
	Autor: Gustavo Guanabara
	Empresa: Estudonauta */
	inclua biblioteca Util
	inclua biblioteca Tipos
	inclua biblioteca Matematica
	funcao inicio()
	{
		inteiro num[5][5]
		inteiro total = Util.numero_linhas(num) * Util.numero_colunas(num)
		inteiro soma = 0
		// Sortear valores na Matriz
		para (inteiro l = 0; l < Util.numero_linhas(num); l++) {
			para (inteiro c = 0; c < Util.numero_colunas(num); c++) {
				num[l][c] = sorteia(1,10)
			}
		}
		// Mostrar matriz na tela e calcular a média
		para (inteiro l = 0; l < Util.numero_linhas(num); l++) {
			para (inteiro c = 0; c < Util.numero_colunas(num); c++) {
				escreva(num[l][c] + "\t")
				soma += num[l][c]
				Util.aguarde(300)		
			}	
			escreva("\n")
		}
		real media = Tipos.inteiro_para_real(soma) / Tipos.inteiro_para_real(total)
		escreva("------------------------------------------\n")
		escreva("A média dos valores é " + Matematica.arredondar(media, 2))

		// Acima da média na segunda linha
		inteiro tot2L = 0
		escreva("------------------------------------------\n")
		escreva("Na segunda linha, os valores acima da média são:  ")
		para (inteiro c = 0; c < Util.numero_colunas(num); c++) {
			se (num[1][c] >= media) {
				escreva("\n[1] [" + c + "] = " + num[1][c])
				tot2L++	
			}	
		}
		escreva("\nTOTAL = " + tot2L + " ocorrência(s).")

		// Abaixo da média na terceira coluna
		inteiro tot3C = 0
		escreva("------------------------------------------\n")
		escreva("Na terceira coluna, os valores abaixo da média são: ")
		para (inteiro l = 0; l < Util.numero_linhas(num); l++) {
			se (num[l][2] < media) {
				escreva("\n [" + l + "] [2] = " + num[l][2])
				tot3C++
			}	
		}
		escreva("\nTOTAL = " + tot3C + " ocorrência(s).\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1044; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */