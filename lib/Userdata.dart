class User {
  final String email;
  final String password;

  const User({
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'User{email: $email, password: $password}';
  }
}
