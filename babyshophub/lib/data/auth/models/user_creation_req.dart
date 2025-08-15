class UserCreationReq {
  String ? firstName;
  String ? lastName;
  String ? email;
  String ? password;
  int ? gender;
  String ? age;

  UserCreationReq({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.gender,
    required this.age
  });

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'password': password,
    };
  }
}