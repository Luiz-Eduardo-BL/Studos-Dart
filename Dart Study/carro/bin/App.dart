// ignore: file_names
import 'dart:io';
import 'carro.dart';

void main() {
  //usar classe Carro
  Carro carro = Carro();

  //menu
  void menu() {
    print("=====================================");
    print("Menu\n");
    print("1 - Embarcar");
    print("2 - Desembarcar");
    print("3 - Abastecer");
    print("4 - Dirigir");
    print("5 - Mostrar dados do carro");
    print("6 - Sair");
    print("=====================================\n");
  }

  menu();

  //loop
  while (true) {
    //mostrar menu
    print("Digite uma opção: ");
    String? input = stdin.readLineSync();

    if (input == "1") {
      print("Quantos passageiros deseja embarcar? ");
      String? pass = stdin.readLineSync();
      carro.embarcar(int.parse(pass!));
    } else if (input == "2") {
      print("Quantos passageiros deseja desembarcar? ");
      String? pass = stdin.readLineSync();
      carro.desembarcar(int.parse(pass!));
    } else if (input == "3") {
      print("Quantos litros deseja abastecer? ");
      String? litros = stdin.readLineSync();
      carro.abastecer(int.parse(litros!));
    } else if (input == "4") {
      print("Quantos km deseja dirigir? ");
      String? km = stdin.readLineSync();
      carro.dirigir(int.parse(km!));
    } else if (input == "5") {
      print(carro);
    } else if (input == "6") {
      break;
    } else {
      print("Opção inválida");
    }
  }

  print("Obrigado por usar nosso programa!");
}
