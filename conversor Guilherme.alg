algoritmo "Conversor Guilherme"

var
cotacaodolar, tempC,tempF, valorReal, valorDolar : real
continuar: logico
opcao1, opcao2: literal

inicio
escreval ("cota��o do d�lar")
leia (cotacaodolar)
     Continuar <- verdadeiro

repita

    escreval("-----MENU------")
    escreval()
    escreval(" 1 - Temperatura: Celsius para Fahrenheit")
    escreval()
    escreval(" 2 - Temperatura: Fahrenheit para Celsius")
    escreval()
    escreval(" 3 - Moeda: Reais(R$) para D�lar(US$)")
    escreval()
    escreval(" 4 - Moeda: D�lar(US$) para Reais(R$)")
    escreval()
    escreval(" 5 - Encerrar")
    escreval()
    escreval("================")
    escreval()
    escreva("Informe a op��o que deseja: ")
    leia (opcao1)
    
    escolha opcao1
    caso "1"
         escreva("Informe a temperatura em �Celsius: ")
                          leia(tempC)
         tempF <- 1.8 * tempC + 32
         escreval(tempC, "�C equivale a ", tempF:2:2, "�F.")
     caso "2"
            escreva("Informe a temperatura em �Fahrenheit: ")
            leia(tempFahrenheit)
            tempC <- (tempF - 32) / 1.8
            escreval(tempF, "�F equivale a ", tempC:2:2, "�C.")
     caso "3"
            escreva("Informe o valor em Reais(R$): ")
            leia(valorReal)
            valorDolar <- valorReal / cotacaoDolar
            escreval("R$ ", valorReal:2:2, " equivale(m) a US$ ", valorDolar:2:2, " de acordo com a cota��o atual.")
            
      caso "4"
            escreva("Informe o valor em D�lares(US$): ")
            leia(valorDolar)
            valorReal <- valorDolar * cotacaoDolar
            escreval("US$ ", valorDolar:2:2, " equivale(m) a R$ ", valorReal:2:2, " de acordo com a cota��o atual.")
            
      caso "5"
            interrompa
            
      outrocaso
           limpatela
           escreval("Erro! Informe uma op��o do menu ...")
           
       fimescolha
repita
escreval()
escreva("Deseja voltar ao menu inicial? (s - sim / n - n�o) ")
    leia(opcao2)
ate (opcao2 = "n") ou (opcao2 = "s")

se (opcao2 = "n") entao
    continuar <- Falso
senao
    limpatela
fimse

ate (opcao1 = "5") ou (continuar = Falso)

limpatela
escreval("obrigado por utilizar nosso conversor!")
fimalgoritmo

