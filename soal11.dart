void main() {
  int chat = 1, video = 2, game = 3;
  double sisabaterai = 100 - ((60/5)*chat) - ((30/5)*video) - ((45/5)*game);
  print("Sisa baterai: ${sisabaterai.toInt()}");
}