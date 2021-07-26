main(List<String> args) {
  var grades = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var names = ['Ana', 'Bia', 'Calor', 'Daniel', 'Maria', 'Pedro'];

  double total = grades.reduce(ReduceFn().sum);
  print('***Sum:.......$total');

  String nameList = names.reduce(ReduceFn().joinAll);
  print('***Name list:.......$nameList');
}

class ReduceFn {
  double sum(double accumulator, double element) {
    print('$accumulator => $element');
    return accumulator + element;
  }

  String joinAll(String accumulator, String element) {
    print('$accumulator => $element');
    return '$accumulator, $element';
  }
}
