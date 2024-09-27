import 'dart:io';

void main() {
  stdout.write("Masukkan jumlah jam parkir: ");
  double jamparkir = double.parse(stdin.readLineSync()!);
  double biayaparkir = 0;
  if (jamparkir <= 2) biayaparkir = jamparkir * 2000;
  else biayaparkir = (2 * 2000) + ((jamparkir - 2)*1000);
  stdout.write("Biaya Parkir: ${biayaparkir.toInt()}");
}