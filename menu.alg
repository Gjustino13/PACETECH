algoritmo "semnome"

var
 opcao, menu: literal
inicio
repita
  escreval("digite 1 para exibir a tabuada de um numero")
  escreval("digite 2 para exibir a tabuada do 1 ao 5")
  escreval("digite 3 para exibir a tabuada no intervalo de dois numeros")
  escreval ("digite 4 para sair")
leia(menu)
escolha menu
caso "1"
       escreval("opcao1")
caso "2"
     escreval("opcao2")
caso "3"
       escreval("opcao3")
caso "4"
       escreval("opcao4")
outrocaso
         escreval("opção invalida")
fimescolha
escreval ("deseja sair? s/n")
leia(opcao)
limpatela

ate opcao = "s"
fimalgoritmo
