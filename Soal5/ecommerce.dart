import 'dart:math';

abstract class Kue {
  String nama;
  double harga;

  Kue(this.nama, this.harga);

  double hitungHarga();

  @override
  String toString() {
    return '$nama (Rp${hitungHarga().toStringAsFixed(2)})';
  }
}

class KuePesanan extends Kue {
  double berat;

  KuePesanan(String nama, double harga, this.berat) : super(nama, harga);

  @override
  double hitungHarga() {
    return harga * berat;
  }
}

class KueJadi extends Kue {
  double jumlah;

  KueJadi(String nama, double harga, this.jumlah) : super(nama, harga);

  @override
  double hitungHarga() {
    return harga * jumlah * 2;
  }
}

void main() {
  // Buat list yang terdiri dari 20 kue
  final List<Kue> kueList = [
    KuePesanan('Brownies', 20000, 0.5),
    KuePesanan('Lapis Legit', 50000, 1),
    KuePesanan('Bolu Kukus', 15000, 0.3),
    KueJadi('Donat', 10000, 10),
    KueJadi('Kue Lumpur', 5000, 20),
    KuePesanan('Cupcake', 8000, 0.1),
    KueJadi('Roti Bakar', 12000, 5),
    KuePesanan('Kue Leker', 10000, 0.2),
    KuePesanan('Kue Kering', 25000, 0.5),
    KueJadi('Kue Sus', 15000, 15),
    KueJadi('Kue Cubit', 6000, 30),
    KuePesanan('Kue Putu', 12000, 0.2),
    KueJadi('Kue Tart', 20000, 6),
    KuePesanan('Kue Lumpur', 10000, 0.3),
    KueJadi('Martabak', 25000, 3),
    KuePesanan('Pudding', 12000, 0.2),
    KueJadi('Kue Bolu', 18000, 8),
    KuePesanan('Kue Apem', 8000, 0.3),
    KuePesanan('Kue Mangkok', 15000, 0.4),
  ];

  // Tampilkan semua kue beserta jenisnya
  print('Daftar Kue:');
  kueList.forEach((kue) => print('${kue.runtimeType}: $kue'));

  // Hitung total harga dari semua jenis kue
  final double totalHarga =
      kueList.fold<double>(0, (acc, kue) => acc + kue.hitungHarga());
  print('Total harga dari semua jenis kue: Rp${totalHarga.toStringAsFixed(2)}');

  // Hitung total harga dan total berat dari KuePesanan
  final List<KuePesanan> kuePesananList =
      kueList.whereType<KuePesanan>().toList();
  final double totalHargaKuePesanan =
      kuePesananList.fold<double>(0, (acc, kue) => acc + kue.hitungHarga());
  final double totalBeratKuePesanan =
      kuePesananList.fold<double>(0, (acc, kue) => acc + kue.berat);
  print(
      'Total harga dari KuePesanan: Rp${totalHargaKuePesanan.toStringAsFixed(2)}');
  print(
      'Total berat dari KuePesanan: ${totalBeratKuePesanan.toStringAsFixed(2)} kg');

// Hitung total harga dan total jumlah dari KueJadi
  final List<KueJadi> kueJadiList = kueList.whereType<KueJadi>().toList();
  final double totalHargaKueJadi =
      kueJadiList.fold<double>(0, (acc, kue) => acc + kue.hitungHarga());
  final double totalJumlahKueJadi =
      kueJadiList.fold<double>(0, (acc, kue) => acc + kue.jumlah);
  print('Total harga dari KueJadi: Rp${totalHargaKueJadi.toStringAsFixed(2)}');
  print('Total jumlah dari KueJadi: ${totalJumlahKueJadi.toStringAsFixed(2)}');

// Tampilkan informasi kue dengan harga terbesar
  final Kue kueTermahal = kueList.reduce(
      (kue1, kue2) => kue1.hitungHarga() > kue2.hitungHarga() ? kue1 : kue2);
  print('Kue dengan harga terbesar: $kueTermahal');
}
