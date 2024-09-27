import 'dart:io';

void main() {
  int hrgapel = 5000, hrgjeruk = 4000;

  stdout.write("Masukkan jumlah apel yang ingin dibeli (kg): ");
  int jumapel = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan jumlah jeruk yang ingin dibeli (kg): ');
  int jumjeruk = int.parse(stdin.readLineSync()!);

  int total = (jumapel * hrgapel) + (jumjeruk * hrgjeruk);
  print("Total Belanja: ${total}");
}