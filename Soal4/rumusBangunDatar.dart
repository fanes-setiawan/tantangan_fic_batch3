import 'dart:math';

abstract class BangunDatar {
  double hitungLuas();
  double hitungKeliling();
}

class persegiPanjang extends BangunDatar {
  double panjang, lebar;

  persegiPanjang(this.panjang, this.lebar);

  @override
  double hitungLuas() {
    return panjang * lebar;
  }

  @override
  double hitungKeliling() {
    return 2 * (panjang + lebar);
  }
}

class bujurSangkar extends BangunDatar {
  double sisi;
  bujurSangkar(this.sisi);

  @override
  double hitungLuas() {
    return sisi * sisi;
  }

  @override
  double hitungKeliling() {
    return 4 * sisi;
  }
}

class lingkaran extends BangunDatar {
  double radius;
  lingkaran(this.radius);

  @override
  double hitungLuas() {
    return pi * radius * radius;
  }

  @override
  double hitungKeliling() {
    return 2 * pi * radius;
  }
}

void main() {
  print("===Persegi Panjang===");
  BangunDatar PersegiPanjang = persegiPanjang(25, 15);
  print("Luas : ${PersegiPanjang.hitungLuas()}");
  print("Keliling : ${PersegiPanjang.hitungKeliling()}");

  print("===Bujur  Sangkar===");
  BangunDatar BujurSangkar = bujurSangkar(20);
  print("Luas : ${BujurSangkar.hitungLuas()}");
  print("Keliling : ${BujurSangkar.hitungKeliling()}");

  print("===Lingkaran===");
  BangunDatar Lingkaran = lingkaran(10);
  print("Luas : ${Lingkaran.hitungLuas()}");
  print("Keliling : ${Lingkaran.hitungKeliling()}");
}
