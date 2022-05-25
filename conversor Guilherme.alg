algoritmo "Conversor Guilherme"

var
cotacaodolar, tempC,tempF, valorReal, valorDolar : real
continuar: logico
opcao1, opcao2: literal

inicio
escreval ("cotação do dólar")
leia (cotacaodolar)
     Continuar <- verdadeiro

repita

    escreval("-----MENU------")
    escreval()
    escreval(" 1 - Temperatura: Celsius para Fahrenheit")
    escreval()
    escreval(" 2 - Temperatura: Fahrenheit para Celsius")
    escreval()
    escreval(" 3 - Moeda: Reais(R$) para Dólar(US$)")
    escreval()
    escreval(" 4 - Moeda: Dólar(US$) para Reais(R$)")
    escreval()
    escreval(" 5 - Encerrar")
    escreval()
    escreval("================")
    escreval()
    escreva("Informe a opção que deseja: ")
    leia (opcao1)
    
    escolha opcao1
    caso "1"
         escreva("Informe a temperatura em ºCelsius: ")
                          leia(tempC)
         tempF <- 1.8 * tempC + 32
         escreval(tempC, "ºC equivale a ", tempF:2:2, "ºF.")
     caso "2"
            escreva("Informe a temperatura em ºFahrenheit: ")
            leia(tempFahrenheit)
            tempC <- (tempF - 32) / 1.8
            escreval(tempF, "ºF equivale a ", tempC:2:2, "ºC.")
     caso "3"
            escreva("Informe o valor em Reais(R$): ")
            leia(valorReal)
            valorDolar <- valorReal / cotacaoDolar
            escreval("R$ ", valorReal:2:2, " equivale(m) a US$ ", valorDolar:2:2, " de acordo com a cotação atual.")
            
      caso "4"
            escreva("Informe o valor em Dólares(US$): ")
            leia(valorDolar)
            valorReal <- valorDolar * cotacaoDolar
            escreval("US$ ", valorDolar:2:2, " equivale(m) a R$ ", valorReal:2:2, " de acordo com a cotação atual.")
            
      caso "5"
            interrompa
            
      outrocaso
           limpatela
           escreval("Erro! Informe uma opção do menu ...")
           
       fimescolha
repita
escreval()
escreva("Deseja voltar ao menu inicial? (s - sim / n - não) ")
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

