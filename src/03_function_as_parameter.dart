main(List<String> args) {
  FunctionAsParam().runTheFunction();
}

class FunctionAsParam {
  void countPrint(int qtd, Function(String) fn, String value) {
    for (var i = 0; i < qtd; i++) {
      fn('${i + 1} $value');
    }
  }

  void runTheFunction() {
    countPrint(10, print, 'Great');
  }
}
