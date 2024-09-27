import 'dart:io';

void main() {
  stdout.write("Masukkan jumlah jam kerja / minggu: ");
  double jamkerja = double.parse(stdin.readLineSync()!);
  int totalgaji = 4000000;
  if (jamkerja > 40) totalgaji = totalgaji + 200000;
  stdout.write("Total Gaji: ${totalgaji}");
}