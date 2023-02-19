class Calculadora {
  int? batteryLevel;
  int? batteryLevelMax;
  var display;

  Calculadora() {
    if (batteryLevelMax != null) {
      this.batteryLevelMax = batteryLevelMax;
      display;
    }
  }

  void chargeBattery(int value) {
    if (batteryLevelMax != null) {
      if (batteryLevel != null) {
        if (batteryLevel! + value <= batteryLevelMax!) {
          batteryLevel = batteryLevel! + value;
        } else {
          batteryLevel = batteryLevelMax;
        }
      }
    }
  }

  bool useBattery() {
    if (batteryLevel != null && batteryLevel! > 0) {
      batteryLevel = batteryLevel! - 1;
      return true;
    } else {
      throw Exception('Bateria insuficiente');
    }
    return false;
  }

  void sum(int a, int b) {
    if (useBattery()) {
      display = a + b;
    }
  }

  void division(int a, int b) {
    if (useBattery()) {
      if (b != 0) {
        display = a / b;
      } else {
        print("Não é possível dividir por 0\n");
      }
    }
  }

  void multiplication(int a, int b) {
    if (useBattery()) {
      display = a * b;
    }
  }

  void subtraction(int a, int b) {
    if (useBattery()) {
      display = a - b;
    }
  }
  
  @override
  String toString() {
    if (batteryLevel != null) {
      return 'Bateria maxima: ${batteryLevelMax}%\nBateria atual: ${batteryLevel}%\nDisplay: ${display}\n';
    }
    return super.toString();
  }

}
