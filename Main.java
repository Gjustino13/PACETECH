
package projetosemana06;

import java.util.Scanner;

public class ProjetoSemana06 {

    public static void main(String[] args) {
        float cotacaoDolar;
        float tempCelsius = 0;
        float tempFahrenheit = 0;
        float valorReais = 0;
        float valorDolares = 0;
        char opcao;
        char continuar = 's';
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Ol�!");
        System.out.print("Informe a cota��o do D�lar: ");
        cotacaoDolar = leitor.nextFloat();
        
        while (continuar == 'S' || continuar == 's'){
            System.out.println("\n MENU ");
            System.out.println(" 1 - Temperatura: Celsius para Fahrenheit\n");
            System.out.println(" 2 - Temperatura: Fahrenheit para Celsius\n");
            System.out.println(" 3 - Moeda: Reais(R$) para D�lar(US$)\n");
            System.out.println(" 4 - Moeda: D�lar(US$) para Reais(R$)");
            System.out.println("\n");
            System.out.print("Informe a op��o que deseja: ");
        
            opcao = leitor.next().charAt(0);
            
            switch(opcao){
                
                case '1':
                    System.out.print("Informe a temperatura em �Celsius: ");
                    tempCelsius = leitor.nextInt();
                    tempFahrenheit = 1.8f * tempCelsius + 32;
                    System.out.println("\n==> Resultado: " + tempCelsius + "�C equivale(m) a " + tempFahrenheit + "�F.");
                    break;
                    
                case '2':
                    System.out.print("Informe a temperatura em �Fahrenheit: ");
                    tempFahrenheit = leitor.nextInt();
                    tempCelsius = (tempFahrenheit - 32) / 1.8f;
                    System.out.println("\n==> Resultado: " + tempFahrenheit + "�F equivale(m) a " + tempCelsius + "�C.");
                    break;
                    
                case '3':
                    System.out.print("Informe o valor em Reais(R$): ");
                    valorReais = leitor.nextFloat();
                    valorDolares = valorReais / cotacaoDolar;
                    System.out.println("\n==> Resultado: R$ " + valorReais + " equivale(m) a US$ " + valorDolares + 
                    " de acordo com a cota��o informada.");
                    break;
                    
                case '4':
                    System.out.print("Informe o valor em D�lares(US$): ");
                    valorDolares = leitor.nextFloat();
                    valorReais = valorDolares * cotacaoDolar;
                    System.out.println("\n==> Resultado: US$ " + valorDolares + " equivale(m) a R$ " + valorReais + 
                    " de acordo com a cota��o informada.");
                    break;
                                        
                default:
                    System.out.println("\n==> Erro! Informe uma op��o do menu ...");
                  
            }  // fim switch
            System.out.print("\nDeseja fazer outra convers�o? (S - sim / N - n�o): ");
            continuar = leitor.next().charAt(0);
        }  // fim while
        
        System.out.println("\nA!\n");
    }
}
