import 'dart:io';
import 'Calculadora.dart';

void main() {
  
  Calculadora calculadora = Calculadora();

  print('Digite o valor maximo da bateria: ');
  calculadora.batteryLevelMax = int.parse(stdin.readLineSync()!);
  print('-------------------------\n');
  print('Digite o valor de carga da bateria: ');
  calculadora.batteryLevel = int.parse(stdin.readLineSync()!);
  print('Carregando bateria...\n');
  print('Bateria maxima: ${calculadora.batteryLevelMax}%');
  print('Bateria atual: ${calculadora.batteryLevel}%');
  print('-------------------------\n');

  void menu() {
    print('Digite a opção desejada: ');
    print('1 - Somar');
    print('2 - Subtrair');
    print('3 - Multiplicar');
    print('4 - Dividir');
    print('5 - Mostrar bateria');
    print('6 - Sair');
    print('-------------------------\n');
  }

  menu();

  while (true) {

    int option = int.parse(stdin.readLineSync()!);

    int a = 0;
    int b = 0;

    if (option != 5 && option != 6) {
      print('Digite o primeiro valor: ');
      a = int.parse(stdin.readLineSync()!);
      print('Digite o segundo valor: ');
      b = int.parse(stdin.readLineSync()!);
      print('-------------------------\n');
    }

    switch (option) {
      case 1:
        calculadora.sum(a, b);
        break;
      case 2:
        calculadora.subtraction(a, b);
        break;
      case 3:
        calculadora.multiplication(a, b);
        break;
      case 4:
        calculadora.division(a, b);
        break;
      case 5:
        print('Bateria maxima: ${calculadora.batteryLevelMax}%');
        print('Bateria atual: ${calculadora.batteryLevel}%\n');
        break;
      case 6:
        print('Saindo...');
        exit(0);
        break;
      default:
        print('Opção inválida');
    }

    try {
      if (option != 5 && option != 6){
        print(calculadora);
      }
    } catch (e) {
      print(e);
    }

    menu();
  }
}
