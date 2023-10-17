String longestUniqueSubstring(String str) {
  List<String> subStr = [];
  List<String> maxStr = [];

  for (final char in str.split('')) {
    if (!subStr.contains(char)) {
      subStr.add(char);
    } else {
      if (subStr.length > maxStr.length) maxStr = [...subStr];
      subStr.clear();
    }
  }

  if (subStr.length > maxStr.length) maxStr = [...subStr];
  return maxStr.join();
}

main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}
