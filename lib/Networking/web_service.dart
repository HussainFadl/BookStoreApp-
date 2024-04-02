import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Feature/LogInView/login_response_model.dart';

class BookService {
  static const String baseUrl = 'https://codingarabic.online/api';
  static const String loginEndpoint = "/login";
  static const String registerEndpoint = "/register";

  Future<LoginResponse?> login(String email, String password) async {
    try {
      print('Email: $email');
      print('Password: $password');

      final response = await http.post(
        Uri.parse('$baseUrl$loginEndpoint'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        // Assuming the server returns a LoginResponse object as JSON
        return LoginResponse.fromJson(jsonDecode(response.body));
      } else {
        // Handle server errors or invalid responses
        print('Server status code: ${response.body}');
        print('Server error: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      // Handle network errors or exceptions
      print('Error occurred: $e');
      return null;
    }
  }

  Future<LoginResponse?> register(String name, String email, String password,
      String confirmPassword) async {
    // Hussain will add registeration http request here

    // Request body
    Map<String, String> requestBody = {
      'name': name,
      'email': email,
      'password': password,
      'confirm_password': confirmPassword,
    };

    // Encode the request body to JSON
    String jsonBody = json.encode(requestBody);

    try {
      // Send POST request
      http.Response response = await http.post(
        Uri.parse(baseUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonBody,
      );

      // Check the response status code
      if (response.statusCode == 201) {
        // Registration successful
        print('Registration successful!');
        print('Response: ${response.body}');
      } else {
        // Registration failed
        print('Registration failed!');
        print('Status code: ${response.statusCode}');
        print('Response: ${response.body}');
      }
    } catch (e) {
      // Error occurred during the HTTP request
      print('Error occurred: $e');
    }
    return null;
  }
}
