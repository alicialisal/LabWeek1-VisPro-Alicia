void loop(bool Function() condition, Function body) {
  while (condition()) {
    body();
  }
}