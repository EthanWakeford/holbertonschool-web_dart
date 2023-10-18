import 'dart:convert';
import '3-util.dart';

Future<String> loginUser() async {
  try {
    final bool correctCreds = await checkCredentials();

    if (correctCreds) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> greetUser() async {
  final String jsonData = await fetchUserData();
  final String username = jsonDecode(jsonData)['username'];
  return 'Hello $username';
}

main() async {
  print(await loginUser());
}
