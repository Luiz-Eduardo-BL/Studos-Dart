import 'dart:io';

class Carro {
  int pass = 0; // Passageiros
  int passMax = 5; // Passageiros Máximo
  int gas = 0; // Gasolina
  int gasMax = 100; // Gasolina Máximo
  int km = 0; // Quilometragem

  String? input = stdin.readLineSync();

//embarcar pessoas
  void embarcar(pass) {
    if (pass < passMax) {
      this.pass = pass + this.pass;
      print("Passageiros embarcados");
    } else
      print(ArgumentError("O carro já está cheio"));
  }

  //desembarcar pessoas
  void desembarcar(int pass) {
    if (pass > 0 && pass <= passMax) {
      this.pass = this.pass - pass;
      print("Passageiro desembarcado");
    } else
      print(ArgumentError("O carro já está vazio"));
  }

  //abastecer
  void abastecer(int litros) {
    if (gas < gasMax) {
      gas = gas + litros;
      print("Foi abastecido $gas litros");
    } else
      print(ArgumentError("O carro já está cheio"));
  }

  //andar
  void dirigir(km) {
    if (pass >= 1 && gas >= 5) {
      gas = gas - 5;
      this.km = km;
      print("O carro andou $km km");
    } else
      print(ArgumentError("O carro não pode andar"));
  }

  @override
  String toString() {
    return "Passageiros: $pass\nGasolina: $gas\nQuilometragem: $km";
  }
}
