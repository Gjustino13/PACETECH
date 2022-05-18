algoritmo "semnome"
var
tempCelsius, tempFahr : real
inicio
escreval("Informe a Temperatura em Fahrenheit")
leia(tempFahr)
tempCelsius <- (tempFahr - 32)/1,8
escreval("A Temperatura em Celsius é:", tempCelsius)
se tempCelsius <15 entao
   escreval("Está frio")
senao
   se tempCelsius <=28 entao
      escreval("Está Agradável")
   senao
      escreval("Está Quente")
   fimse
fimse
fimalgoritmo
