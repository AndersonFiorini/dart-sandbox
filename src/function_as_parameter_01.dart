import 'dart:math';

main(List<String> args) {
  var myFnEven = () => print('The value is even!!!');
  var myFnOdd = () => print('The value is odd!!!');
  checkEvenOdd(fnEven: myFnEven, fnOdd: myFnOdd);
}

void checkEvenOdd({required Function fnEven, required Function fnOdd}) {
  var drawnNumber = Random().nextInt(10);
  print('The number drawn was $drawnNumber');
  drawnNumber % 2 == 0 ? fnEven() : fnOdd();
}
