import 'dart:io';

void main() {
  stdout.write("Masukkan suhu dalam Celsius: ");
  double c = double.parse(stdin.readLineSync()!);
  double f = ((9/5) * c) + 32;
  stdout.write("Suhu dalam fahrenheit: ${f}");
}