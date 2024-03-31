
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'login_response.dart';

class BookService {
  static const String baseUrl = 'https://codingarabic.online/api';
  static const String loginEndpoint = "/login";

  Future<LoginResponse?> login(String email, String password) async {

    try {

      print('Email: $email');
      print('Password: $password');
      final response = await http.post(
        Uri.parse("$baseUrl$login"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        // Assuming the server returns a LoginResponse object as JSON
        return LoginResponse.fromJson(jsonDecode(response.body));
      } else {
        // Handle server errors or invalid responses
        print('Server error: ${response.body}');
        return null;
      }
    } catch (e) {
      // Handle network errors or exceptions
      print('Error occurred: $e');
      return null;
    }
  }

  Future<LoginResponse?> register() async {
    // Hussain will add registeration http request here
  }
}