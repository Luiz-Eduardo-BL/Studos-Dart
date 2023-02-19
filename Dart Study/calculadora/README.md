# Calculadora & Utilizando uma calculadora que gasta e recarrega bateria

***
***Questão de Programação Orientada a Objetos em Java, sendo utilizada de base para estudo da linguaguem Dart.***
***

<!--TOC_BEGIN-->
- [Requisitos](#requisitos)
- [Ajuda](#ajuda)
- [Esqueleto](#esqueleto)
<!--TOC_END-->


O objetivo dessa atividade é implementar uma calculadora à bateria. Se há bateria, ela executa operações de soma, multiplicação e divisão. É possível também mostrar a quantidade de bateria e recarregar a calculadora. Ela avisa quando está sem bateria e se há tentativa de divisão por 0.


***
## Requisitos

- Mostrar bateria da calculadora.
- Recarregar a bateria.
- Realizar operações matemáticas de soma e divisão.
- Se o usuário tentar realizar operações e a bateria estiver vazia, deverá ser mostrada uma notificação sobre falta de bateria.
- Se for tentada divisão por zero, deve ser notificado o erro.

***

## Ajuda

Em sala, vimos algumas formas de se formatar números de ponto flutuante com duas casas decimais.
Por exemplo, a classe **String** tem o método estático **format**, que retorna uma string formatada.
Uma outra forma é utilizar a classe do Java chamada **DecimalFormat**, como exemplificado abaixo:

```java
import java.text.*;
  
class Decimals {
  public static void main(String[] args) {
    float f = 125.0f;
    DecimalFormat form = new DecimalFormat("0.00");
    System.out.println(form.format(f));
  }
}
```

***
## Esqueleto

Logo abaixo, encontram-se duas classes que **devem obrigatoriamente** ser utilizadas para solucionar a atividade. A classe **Calculator** está incompleta e você deve completá-la a fim de resolver esta atividade. A Classe **Solver** possui uma função `main` que será utilizada para rodar a aplicação. 

Ao preparar sua atividade, use as boas práticas de programação em POO discutidas em sala, incluindo fornecer modificadores de acesso adequados para atributos e métodos.

<!--FILTER Solver.java java-->
```java
class Calculator {
    int batteryMax;
    int battery;
    float display;
    //Inicia os atributos, battery e display começam com o zero.
    Calculator(int batteryMax);
    //Aumenta a bateria, porém não além do máximo.
    void chargeBattery(int value); 
    //Tenta gastar uma unidade da bateria e emite um erro se não conseguir.
    boolean useBattery(); 
    //Se conseguir gastar bateria, armazene a soma no atributo display.
    void sum(int a, int b); 
    //Se conseguir gastar bateria e não for divisão por 0.
    void division(int num, int den);
    //Retorna o conteúdo do display com duas casas decimais.
    String toString(); 
}
// Não mexa no código da classe abaixo. 
// Ele já está finalizado.
class Solver{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Calculator calc = new Calculator(0);
        while(true){
            String line = scanner.nextLine();
            System.out.println("$" + line);
            String ui[] = line.split(" ");
            if(line.equals("end")) {
                break;
            } else if(ui[0].equals("init")) { //batteryMax
                calc = new Calculator(Integer.parseInt(ui[1]));
            } else if(ui[0].equals("show")) {
                System.out.println(calc);
            } else if(ui[0].equals("charge")) {
                calc.chargeBattery(Integer.parseInt(ui[1]));
            } else if(ui[0].equals("sum")) {//value value
                calc.sum(Integer.parseInt(ui[1]), Integer.parseInt(ui[2]));
            } else if(ui[0].equals("div")) {//value value
                calc.division(Integer.parseInt(ui[1]), Integer.parseInt(ui[2]));
            } else {
                System.out.println("fail: comando invalido");
            }
        }
        scanner.close();
    }
}
```
<!--FILTER_END-->

