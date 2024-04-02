class LoginResponse {
  final LoginData data;
  final String message;
  final List<dynamic> error; // Assuming error is an array. Adjust type based on actual content.
  final int status;

  LoginResponse({
    required this.data,
    required this.message,
    required this.error,
    required this.status,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      data: LoginData.fromJson(json['data']),
      message: json['message'],
      error: json['error'],
      status: json['status'],
    );
  }
}

class LoginData {
  final LoginUser user;
  final String token;

  LoginData({required this.user, required this.token});

  factory LoginData.fromJson(Map<String, dynamic> json) {
    return LoginData(
      user: LoginUser.fromJson(json['user']),
      token: json['token'],
    );
  }
}

class LoginUser {
  final int id;
  final String name;
  final String email;
  final String? address;
  final String? city;
  final String? phone;
  final bool emailVerified;
  final String image;

  LoginUser({
    required this.id,
    required this.name,
    required this.email,
    this.address,
    this.city,
    this.phone,
    required this.emailVerified,
    required this.image,
  });

  factory LoginUser.fromJson(Map<String, dynamic> json) {
    return LoginUser(
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
