import 'dart:math';

class Titik {
  double x;
  double y;

  Titik({this.x = 0, this.y = 0});

  void setX(double newX) {
    x = newX;
  }

  void setY(double newY) {
    y = newY;
  }

  void setXY(double newX, double newY) {
    x = newX;
    y = newY;
  }

  void printTitik() {
    print("Titik berada di ($x ,$y)");
  }

  void moveTo(double jarak, double arah) {
    double dx = jarak * cos(arah);
    double dy = jarak * sin(arah);
  }

  double hitungJarak(Titik otherTitik) {
    double dx = x - otherTitik.x;
    double dy = y - otherTitik.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  // onject dengan nilai default(0,0)
  Titik titik = Titik();
  Titik titik1 = Titik(x: 3, y: 5);

  titik.setX(4);
  titik.setY(5);
  titik.setXY(6, 7);
  titik.printTitik();
  titik.moveTo(9, 2);

  double jarak = titik.hitungJarak(titik1);
  print("jarak antara titik dan titik1 adalah $jarak");
}
