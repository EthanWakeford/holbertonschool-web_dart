class User {
  final String? name;
  final int? age;
  final double? height;

  User({this.name, this.age, this.height});

  toJson() {
    return {'name': name, 'age': age, 'height': height};
  }
}

void main() {
  final user = User(name: "Youssef", age: 25, height: 1.89);
  print(user.toJson());
}
