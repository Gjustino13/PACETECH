algoritmo "semnome"
var
tempCelsius, tempFahr : real
inicio
escreval("Informe a Temperatura em Fahrenheit")
leia(tempFahr)
tempCelsius <- (tempFahr - 32)/1,8
escreval("A Temperatura em Celsius �:", tempCelsius)
se tempCelsius <15 entao
   escreval("Est� frio")
senao
   se tempCelsius <=28 entao
      escreval("Est� Agrad�vel")
   senao
      escreval("Est� Quente")
   fimse
fimse
fimalgoritmo
