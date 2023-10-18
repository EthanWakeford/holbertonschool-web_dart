import '0-util.dart';

Future<void> usersCount() {
  return Future(() => fetchUsersCount().then((res) => print(res)));
}

main() async {
  await usersCount();
}
