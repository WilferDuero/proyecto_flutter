class UserModel {
  String name;
  int age;
  String category;

  UserModel({required this.name, required this.age})
      : category = age < 18 ? "Menor de edad" : "Mayor de edad";
}
