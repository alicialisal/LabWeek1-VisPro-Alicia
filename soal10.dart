import 'dart:io';

import 'loop.dart';
void main() {
  int i = 0;
  List<String> antrian = []; // Membuat array untuk menampung nama-nama
  stdout.write("Masukkan nama-nama antrian sesuai urutan kedatangan\n");
  loop(() => i < 5, () {
    stdout.write("Nama ${i+1}: ");
    String? nama = stdin.readLineSync(); // Membaca input dari user
    if (nama != null && nama.isNotEmpty) {
      antrian.add(nama); // Menambahkan nama ke array
      i++;
    }
  });

  // String antrianA = "", antrianB = "";
  i = 1;
  loop(() => i <= 5, () {
    (i % 2 != 0) ? {
      stdout.write("Loket A: ${antrian[i - 1]}\n")
      } : stdout.write("Loket B: ${antrian[i - 1]}\n");
      i++;
  });
}