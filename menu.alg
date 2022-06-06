algoritmo "Conversor de temperaturas"


var
opcao: literal
tempCelsius, tempFahrenheit: real


procedimento criarMenu()
inicio

    escreval("MENU")
    escreval("1 - Celsius para Fahrenheit")
    escreval("2 - Fahrenheit para Celsius")
    escreval("3 - Registro diario de temperaturas")
    escreval("4 - Sair ")
    escreval()
    escreva("Informe a opção que deseja: ")
    leia(opcao)
fimprocedimento


funcao celsiusParaFahrenheit(tempCelsius: real): real
inicio
    retorne(1.8 * tempCelsius + 32)
fimfuncao


funcao fahrenheitParaCelsius(tempFahrenheit: real): real
inicio
    retorne(tempFahrenheit - 32) / 1.8
fimfuncao


procedimento registrarTemperaturas()
var
i,j,aux: inteiro
hora: vetor[1..4] de inteiro
temperaturas: vetor[1..4] de inteiro
inicio
    para i de 1 ate 4 faca
        escreval()
        escreva("Informe a hora da temperatura observada: ")
        leia(hora[i])
        escreva("Informe a temperatura em Cº observada: ")
        leia(temperaturas[i])
    fimpara

    para i de 1 ate 4 faca
        para j de 1 ate 4 faca
            se temperaturas[j] > temperaturas[i] entao
                aux <- temperaturas[i]
                temperaturas[i] <- temperaturas[j]
                temperaturas[j] <- aux

                aux <- hora[i]
                hora[i] <- hora[j]
                hora[j] <- aux
            fimse
        fimpara
    fimpara

    escreval()
    para i de 1 ate 4 faca
        escreval("Temperatura", temperaturas[i], "Cº, registrada ", hora[i], "h, corresponde a ", celsiusParaFahrenheit(temperaturas[i]):2:2, "F.")
    fimpara
fimprocedimento


inicio

repita

    criarMenu()
    escolha(opcao)

    caso "1"
        escreval()
        escreva("Informe a temperatura em Celsius: ")
        leia (tempCelsius)
        escreval()
        escreval(tempCelsius, "Cº equivale(m) a ", celsiusParaFahrenheit(tempCelsius):2:2, "?F.")


    caso "2"
        escreval()
        escreva("Informe a temperatura em Fahrenheit: ")
        leia (tempFahrenheit)
        escreval()
        escreval(tempFahrenheit, "Fº equivale(m) a ", fahrenheitParaCelsius(tempFahrenheit):2:2, "Cº.")

    caso "3"
        registrarTemperaturas()

    caso "4"
        interrompa

    outrocaso
        escreval("==> Opção invalida !!")

    fimescolha
ate opcao = "4"

fimalgoritmo
