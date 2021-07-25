main(List<String> args) {
  var myList = [3, 8, 7, 12, 45, 78, 1];
  print(valueV1(myList));

  int? element = valueV2<int>(myList);
  print(element);
  element = valueV2(myList);
  print(element);
}

Object valueV1(List myList) {
  return myList.length >= 2 ? myList[1] : null;
}

E? valueV2<E>(List<E> myList) {
  return myList.length >= 2 ? myList[1] : null;
}
