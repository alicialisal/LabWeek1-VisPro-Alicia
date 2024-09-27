import 'dart:io';
import "dart:math" show pi;

void main() {
  stdout.write("Masukkan diameter area: ");
  double diameter = double.parse(stdin.readLineSync()!);
  double luas = pi * (diameter/2)*(diameter/2);
  stdout.write("Luas area: ${luas.toStringAsFixed(4)}");
}