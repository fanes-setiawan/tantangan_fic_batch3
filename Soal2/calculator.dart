import 'dart:math';

class Calculator {
  double? operan1;
  double? operan2;

  void createOperan1(double x) {
    operan1 = x;
  }

  void createOperan2(double x) {
    operan2 = x;
  }

  double tambah() {
    return operan1! + operan2!;
  }

  double kurang() {
    return operan1! - operan2!;
  }

  double kali() {
    return operan1! * operan2!;
  }

  double bagi() {
    return operan1! / operan2!;
  }

  double pangkat() {
    return pow(operan1!, operan2!).toDouble();
  }
}

void main() {
  Calculator calculator = Calculator();
  calculator.createOperan1(50);
  calculator.createOperan2(2);

  var Tambah = calculator.tambah();
  print("Hasil penjumlahan $Tambah");
  var Kurang = calculator.kurang();
  print("Hasil Pengurangan $Kurang");
  var Kali = calculator.kali();
  print("Hasil Perkalian $Kali");
  var Bagi = calculator.bagi();
  print("Hasil Pembagian $Bagi");
  var Pangkat = calculator.pangkat();
  print("Hasil Perpangkatan $Pangkat");
}
