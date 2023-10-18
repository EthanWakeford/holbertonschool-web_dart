import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() {
  return Future(() => fetchUserData().then((res) => jsonDecode(res)['id']));
}

main() async {
  print(await getUserId());
}
