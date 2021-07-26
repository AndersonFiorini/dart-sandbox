main(List<String> args) {
  var grades = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  var goodGradesFn = (double grade) => grade >= 7.5;
  var onlyGoodGrades = toFilter(grades, goodGradesFn);
  print(onlyGoodGrades);

  var names = ['Ana', 'Bia', 'Rebeca', 'Gui', 'João', 'Anderson'];
  var longNamesFn = (String name) => name.length >= 5;
  print(toFilter(names, longNamesFn));
}

List<E> toFilter<E>(List<E> myList, bool Function(E) fn) {
  List<E> filterList = [];
  for (E element in myList) {
    if (fn(element)) {
      filterList.add(element);
    }
  }
  return filterList;
}
