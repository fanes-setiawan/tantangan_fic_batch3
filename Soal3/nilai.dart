class Nilai {
  double? _quis;
  double? _uts;
  double? _uas;

  void set quis(double x) {
    _quis = x;
  }

  void set uts(double x) {
    _uts = x;
  }

  void set uas(double x) {
    _uas = x;
  }

  double get na {
    return ((20 / 100) * _quis!) + ((30 / 100) * _uts!) + ((50 / 100) * _uas!);
  }

  String getIndex() {
    double na = this.na;
    if (na >= 80 && na <= 100) {
      return "A";
    } else if (na >= 68 && na <= 79) {
      return "B";
    } else if (na >= 56 && na <= 67) {
      return "C";
    } else if (na >= 45 && na <= 55) {
      return "D";
    } else if (na >= 0 && na <= 44) {
      return "E";
    } else {
      return "input salah";
    }
  }

  String getKeterangan() {
    String getIndex = this.getIndex();
    if (getIndex == "A") {
      return "Sangat Baik";
    } else if (getIndex == "B") {
      return "Baik";
    } else if (getIndex == "C") {
      return "Cukup";
    } else if (getIndex == "D") {
      return "Kurang";
    } else if (getIndex == "E") {
      return "Sangat Kurang";
    } else {
      return "eror";
    }
  }
}

void main() {
  Nilai nilai = Nilai();
  nilai.quis = 90;
  nilai.uts = 80;
  nilai.uas = 95;

  print("Nilai Akhir : ${nilai.na}");
  print("Index Nilai : ${nilai.getIndex()}");
  print("Keterangan Index : ${nilai.getKeterangan()}");
}
