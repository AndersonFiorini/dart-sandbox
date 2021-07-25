main(List<String> args) {
  var grades = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  bool Function(double) goodGradesFn = (double grade) => grade >= 7;
  bool Function(double) veryGoodGradesFn = (double grade) => grade >= 8.5;
  var goodGrades = grades.where(goodGradesFn);
  var veryGoodGrades = grades.where(veryGoodGradesFn);

  print('grades: ' + grades.toString());
  print('good grades: ' + goodGrades.toList().toString());
  print('very good grades: ' + veryGoodGrades.toList().toString());
  print('End...\n');
}
