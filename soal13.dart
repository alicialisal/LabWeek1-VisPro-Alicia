

void main() {
  int mesincuci = 3;
  double cuciperhari = 2.0;
  double cuciperorang = 1.5;

  double totwaktucuci = mesincuci * cuciperhari;
  
  int orangbisacuci = (totwaktucuci / cuciperorang).floor();

  print("Jumlah penghuni yang dapat mencuci di hari yang sama: ${orangbisacuci - (orangbisacuci % mesincuci)}");
}
