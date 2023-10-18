import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final client = http.Client();
  try {
    final url = Uri.https('rickandmortyapi.com', '/api/character');
    final response = await client.get(url);
    final int pages = jsonDecode(response.body)['info']['pages'];

    for (int page = 1; page <= pages; page++) {
      await printCharactersByPage(page, client);
    }
  } catch (err) {
    print(err);
  } finally {
    client.close();
  }
}

printCharactersByPage(int page, http.Client client) async {
  final url =
      Uri.https('rickandmortyapi.com', '/api/character/', {'page': '$page'});
  try {
    final response = await client.get(url);
    final List characterResults = jsonDecode(response.body)['results'];

    for (final character in characterResults) {
      print(character['name']);
    }
  } catch (err) {
    print('$err on page: $page');
  }
}

main() async {
  await printRmCharacters();
}
