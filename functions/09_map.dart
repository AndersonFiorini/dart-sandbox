main(List<String> args) {
  Grades.mapStudents();
}

class Grades {
  Grades.mapStudents() {
    mapStudents();
  }

  var student = [
    {'name': 'Alfredo', 'grade': 9.9},
    {'name': 'Wilson', 'grade': 9.3},
    {'name': 'Mariana', 'grade': 8.7},
    {'name': 'Guilherme', 'grade': 8.1},
    {'name': 'Ana', 'grade': 7.6},
    {'name': 'Ricardo', 'grade': 6.8},
  ];

  void mapStudents() {
    String Function(Map) getNameOnly = (student) => student['name'];
    int Function(String) getLength = (text) => text.length;
    int Function(int) setDouble = (numero) => numero * 2;
    var names = student.map(getNameOnly);
    var nameLength = student.map(getNameOnly).map(getLength);
    var doubleNameLength =
        student.map(getNameOnly).map(getLength).map(setDouble);

    print('Names: $names');
    print('Names Length: $nameLength');
    print('Double Names Length: $doubleNameLength');
  }
}
