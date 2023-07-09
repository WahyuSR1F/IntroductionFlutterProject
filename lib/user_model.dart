class UserModel {
  int? id;
  String? name, email, password, created_at, updated_at;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.created_at,
      this.updated_at});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        name: json['name'],
        password: json['password'],
        created_at: json['created'],
        updated_at: json['updated']);
  }
}
