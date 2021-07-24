main(List<String> args) {
  var myPrint = (String value) {
    print(value);
    return value;
  };
  int stringLength = FunctionAsParam().stringAccumulator(10, myPrint, 'Test');
  print('The string length is $stringLength');
}

class FunctionAsParam {
  int stringAccumulator(int qtd, String Function(String) fn, String value) {
    String fullString = '';
    for (var i = 0; i < qtd; i++) {
      fullString += fn('${i + 1} $value');
    }
    return fullString.length;
  }
}
