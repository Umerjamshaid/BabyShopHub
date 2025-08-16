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
  // Add this method to convert to Firestore document
  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'gender': gender,
      'age': age,
      // Don't store password in Firestore directly
    };
  }


}