# Carro controla a quantidade de pessoas e sai para passear

***
***Questão de Programação Orientada a Objetos em Java, sendo utilizada de base para estudo da linguaguem Dart.***
***

<!--TOC_BEGIN-->
- [Requisitos](#requisitos)
- [Esqueleto](#esqueleto)
<!--TOC_END-->

Essa atividade se propõe a implementar um carro ecológico que pode passear pela cidade. Ele deve poder embarcar e desembarcar pessoas, colocar combustível e andar.


## Requisitos
Seu sistema deverá:

- Inicializar.
    - Iniciar de tanque vazio, sem ninguém dentro e com 0 de quilometragem.
    - Para simplificar, nosso carro esportivo suporta até duas pessoas e seu tanque suporta até 100 litros de água como combustível.
- Entrando e Saindo.
    - Embarcar uma pessoa por vez.
    - Desembarcar uma pessoa por vez.
        - Não embarque além do limite ou desembarque se não houver ninguém no carro.
- Abastecer.
    - Abastecer o tanque passando a quantidade de litros de combustível.
        - Caso tente abastecer acima do limite, descarte o valor que passou.
- Dirigir.
    - Caso haja pelo menos uma pessoa no carro e **algum combustível**, ele deve gastar combustível andando e aumentar a quilometragem.
    - Nosso carro faz um quilômetro por litro de água.
    - Caso não exista combustível suficiente para completar a viagem inteira, dirija o que for possível e emita uma mensagem indicando quanto foi percorrido.

***
## Esqueleto Em Java

Logo abaixo, encontram-se três classes que **devem obrigatoriamente** ser utilizadas para solucionar a atividade. A classe **Car** está incompleta e você deve completá-la a fim de resolver esta atividade. A Classe **Solver** e a classe **Manual** são aplicações, elas possuem uma função `main` e podem ser utilizadas para rodar a aplicação. A diferença entre elas é que **Solver** lê os comandos do usuário até que ele digite `end` para terminar. Já a classe **Manual** contém um conjunto finito e fixo de testes. 

Ao preparar sua atividade, use as boas práticas de programação em POO discutidas em sala, incluindo fornecer modificadores de acesso adequados para atributos e métodos.

<!--FILTER Solver.java java-->
```java
// Complete o código da classe Car a fim de que ela
// realize o que foi pedido acima.
class Car{
    int pass; // Passageiros
    int passMax; // limite de Passageiros
    int gas; // tanque
    int gasMax; // limite do tanque
    int km; // quantidade de quilometragem
    Car();
    String toString();
    void enter();
    void leave();
    void fuel(int gas);
    void drive (int km);
}
// Não mexa na classe abaixo. 
// Ela já está finalizada e pronta para compilar.
class Solver{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Car car = new Car();

        while(true) {
            String line = scanner.nextLine();
            String ui[] = line.split(" ");
            System.out.println("$" + line);
            if(ui[0].equals("end")) {
                break;
            } else if(ui[0].equals("enter")) {
                car.enter();
            } else if(ui[0].equals("leave")) {
                car.leave();
            } else if(ui[0].equals("show")) {
                System.out.println(car.toString());
            } else if (ui[0].equals("drive")) {//km
                car.drive(Integer.parseInt(ui[1]));
            } else if (ui[0].equals("fuel")) {//gas
                car.fuel(Integer.parseInt(ui[1]));
            } else{
                System.out.println("fail: comando invalido");
            }
        }
        scanner.close();
    }
}
// Não mexa na classe abaixo. 
// Ela já está finalizada e pronta para compilar.
class Manual {
    public static void main(String[] args) {
        Car car = new Car();
        System.out.println(car);
        //pass: 0, gas: 0, km: 0
        car.enter();
        car.enter();
        System.out.println(car);
        //pass: 2, gas: 0, km: 0
        car.enter();
        //fail: limite de pessoas atingido
        System.out.println(car);
        //pass: 2, gas: 0, km: 0
        car.leave();
        car.leave();
        car.leave();
        //fail: nao ha ninguem no carro
        System.out.println(car);
        //pass: 0, gas: 0, km: 0

        car = new Car();
        car.fuel(60);
        System.out.println(car);
        //pass: 0, gas: 60, km: 0

        car.drive(10);
        //fail: nao ha ninguem no carro

        car.enter();
        car.drive(10);
        System.out.println(car);
        //pass: 1, gas: 50, km: 10

        car.drive(70);
        //fail: tanque vazio apos andar 50 km
        car.drive(10);
        //fail: tanque vazio
        System.out.println(car);
        //pass: 1, gas: 0, km: 60

        car.fuel(200);
        System.out.println(car);
        //pass: 1, gas: 100, km: 60
    }
}
```
<!--FILTER_END-->
