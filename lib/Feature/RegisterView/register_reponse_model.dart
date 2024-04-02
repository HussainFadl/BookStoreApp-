class RegisterResponse {
  UserData data;
  String message;
  List<dynamic> error;
  int status;

  RegisterResponse({
    required this.data,
    required this.message,
    required this.error,
    required this.status,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
      data: UserData.fromJson(json['data']),
      message: json['message'],
      error: json['error'],
      status: json['status'],
    );
  }
}

class UserData {
  User user;
  String token;

  UserData({
    required this.user,
    required this.token,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      user: User.fromJson(json['user']),
      token: json['token'],
    );
  }
}

class User {
  int id;
  String name;
  String email;
  String? address;
  String? city;
  String? phone;
  bool emailVerified;
  String image;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.address,
    this.city,
    this.phone,
    required this.emailVerified,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      address: json['address'],
      city: json['city'],
      phone: json['phone'],
      emailVerified: json['email_verified'],
      image: json['image'],
    );
  }
}
