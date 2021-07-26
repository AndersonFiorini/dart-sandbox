main(List<String> args) {
  MapReduceFn.average();
}

class MapReduceFn {
  var students = [
    {'name': 'Alfredo', 'grade': 9.9},
    {'name': 'Wilson', 'grade': 9.3},
    {'name': 'Mariana', 'grade': 8.7},
    {'name': 'Guilherme', 'grade': 8.1},
    {'name': 'Ana', 'grade': 7.6},
    {'name': 'Ricardo', 'grade': 6.8},
  ];

  MapReduceFn.average() {
    //Named constructors
    var finalGrades = students
        .map((student) => student['grade'])
        .map((grade) => (grade as double));

    var total = finalGrades.reduce((accumulator, value) => accumulator + value);

    var allApproved = finalGrades
        .where((element) => element >= 7.5)
        .reduce((value, element) => value + element);

    var allFaild = finalGrades
        .where((element) => element < 7.5)
        .reduce((value, element) => value + element);

    print('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year} - ' +
        '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}');

    print('The average of grades is: ${total / finalGrades.length}.');

    print('The average of those approved is:'
        ' ${allApproved / finalGrades.where((element) => element >= 7.5).length}');

    print('The average of those who failed is:'
        ' ${allFaild / finalGrades.where((element) => element < 7.5).length}');
  }
}
