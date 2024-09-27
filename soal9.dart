import 'dart:io';

import 'loop.dart';

void main() {
  int maks = 10;
  num isi = 0;
  List<List<dynamic>> barangbawaan = [
    ["Makanan", 3, 50],
    ["Pakaian", 2, 30],
    ["Alat Masak", 4, 40],
    ["Tenda", 5, 70],
    ["Sleeping Bag", 2, 20]
  ];

  // Sort by the second column (index 1), which represents the weight
  barangbawaan.sort((a, b) => a[1].compareTo(b[1]));
  int lenarr = barangbawaan.length, i = lenarr;

  List<String> barangterpilih = [];

  // Loop through the sorted array
  while (i > 0) {
    // Check if the current item can fit in the remaining space
    if (barangbawaan[i - 1][1] <= maks - isi) {
      // Handle the case where i > 1 to avoid accessing an out-of-range index
      if (i > 1 && barangbawaan[i - 2][2] > barangbawaan[i - 1][2]) {
        i--; // Skip the current item if it's less valuable
        continue;
      } else {
        barangterpilih.add(barangbawaan[i - 1][0]);  // Add the name of the selected item
        isi += barangbawaan[i - 1][1];               // Add the weight of the selected item
      }
    }
    i--; // Move to the previous item in the list
  }

  // Print the selected items
  i = 0;
  loop(() => i < barangterpilih.length, () {
    print(barangterpilih[i]);
    i++;
  });

  stdout.write("Total Bawaan: ${isi} kg");
}