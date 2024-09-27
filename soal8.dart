import 'dart:io';

void main() {
  double kWhAC = 1.5, kWhTV = 0.2, kWhlampu = 0.1;
  double totkonsumenergi = (kWhAC * 8) + (kWhTV * 5) + (kWhlampu * 12);
  stdout.write("Total Konsumsi Energi harian: ${totkonsumenergi.toStringAsFixed(3)} kWh");
}