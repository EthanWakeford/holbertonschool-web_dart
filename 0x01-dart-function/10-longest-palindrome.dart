import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) return 'none';
  List<String> pal = [];
  List<String> maxPal = [];

  for (int i = 0; i < s.length - 3; i++) {
    for (int j = i + 3; j < s.length + 1; j++) {
      if (isPalindrome(s.substring(i, j)) == true) {
        pal = [...s.substring(i, j).split('')];
        if (pal.length > maxPal.length) maxPal = [...pal];
      }
    }
  }

  if (maxPal.length > 0) return maxPal.join();
  return 'none';
}

main() {
  print(longestPalindrome("abcde"));
  print(longestPalindrome("azeghjhg"));
  print(longestPalindrome("aaabvf"));
}
