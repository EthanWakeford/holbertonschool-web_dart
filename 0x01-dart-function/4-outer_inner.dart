void outer(String name, String id) {
  var nameList = name.split(' ');
  nameList[1] = nameList[1][0];
  var formattedName = nameList.reversed.join('.');
  print('Hello Agent $formattedName your id is $id');
}

String inner() {
  return 'hi';
}
