main(List<String> args) {
  String Function(int) sumWith10 = partialSum(10);
  print(partialSum(2)(10));
  print(sumWith10(3));
  print(sumWith10(7));
  print(sumWith10(19));
}

String Function(int) partialSum(int a) {
  int c = 0;
  return (int b) {
    int sum = a + b + c;
    return 'Value: ' + sum.toString();
  };
}
