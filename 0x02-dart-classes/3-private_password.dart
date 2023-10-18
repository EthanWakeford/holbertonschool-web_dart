class Password {
  String _password = '';

  @override
  String toString() {
    return 'Your Password is: $_password';
  }

  Password({required String password}) {
    _password = password;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) return false;
    if (!_password.contains(RegExp(r'[a-z]'))) return false;
    if (!_password.contains(RegExp(r'[A-Z]'))) return false;
    if (!_password.contains(RegExp(r'[0-9]'))) return false;
    return true;
  }
}

void main() {
  final ps = Password(password: "Passwordcode");
  print(ps.toString());
  print(ps.isValid());
  final ps2 = Password(password: "PasswordDecode3");
  print(ps2.toString());
  print(ps2.isValid());
}
