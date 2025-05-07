import 'dart:convert';

class UserModel {
  final int? id;
  final String? username;
  final String name;
  final String? email;
  final String? mobile;
  final String? role;
  final String? picture;
  final String? lastcheckin;

  UserModel({
    this.id = 0,
    this.username = "",
    this.name = "",
    this.email = "",
    this.mobile = "",
    this.role = "",
    this.picture = "",
    this.lastcheckin = "",
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'name': name,
      'email': email,
      'mobile': mobile,
      'role': role,
      'picture': picture,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? 0,
      username: map['username'] ?? "",
      name: map['name'],
      email: map['email'] ?? "",
      mobile: map['mobile'] ?? "",
      role: map['role'] ?? "",
      picture: map['picture'] ?? "",
      lastcheckin: map['lastcheckin'] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, name: $name, email: $email, mobile: $mobile, role: $role, picture: $picture)';
  }
}
