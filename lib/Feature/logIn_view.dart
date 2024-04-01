import 'package:bookstore/Feature/register_view.dart';
import 'package:bookstore/Util/app_colors.dart';
import 'package:bookstore/Util/app_functions.dart';
import 'package:bookstore/Util/custom_TFF.dart';
import 'package:bookstore/Util/custom_button.dart';
import 'package:bookstore/Util/text_styles.dart';
import 'package:flutter/material.dart';

import 'Networking/web_service.dart';


class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  _LogInViewState createState() => _LogInViewState();
}


class _LogInViewState extends State<LogInView> {

  String email = 'husfadl2000@hotmail.com';
  String password = '123456789';
  bool isLoading = false; // Track loading state
  final bookService = BookService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('LogIn View')),
        leading: IconButton(
            onPressed: () {
              AppFunctions.getMoveToNextPage(
                  context: context, theNextScreen: const RegisterView());
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                ),
                child: Center(
                  child: Text(
                    'KETABI',
                    style: getHeadlineStyle(color: AppColors.whiteColor),
                  ),
                ),
              ),
            ),
            Text(
              ' LogIn Now!',
              style: getHeadlineStyle(
                  fontSize: 25,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('Don\'t have an account?'),
                TextButton(
                    onPressed: () {
                      AppFunctions.getMoveToNextPage(
                          context: context,
                          theNextScreen: const RegisterView());
                    },
                    child: const Text('Register Now!'))
              ],
            ),
            MyTTF(initialValue: email,
                prefixIcon: Icon(
                  Icons.email,
                  color: AppColors.primaryColor,
                ),
                labelText: 'Email',
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                }),
            const SizedBox(height: 20),
            MyTTF(
              initialValue: password,
              prefixIcon: Icon(
                Icons.lock,
                color: AppColors.primaryColor,
              ),
              labelText: 'Password',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.primaryColor,
              ),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            const SizedBox(height: 20),
            isLoading
                ? const CircularProgressIndicator()
                : CustomButton(onPressed: () {
                  _login();
            }, text: 'LogIn')
          ],
        ),
      ),
    );
  }

  void _login() async {
    setState(() {
      isLoading = true; // Start loading
    });

    final loginResponse = await bookService.login(email, password);

    if (loginResponse != null) {
      // Login successful
      print('Login successful: ${loginResponse.data.token}');
      // Handle successful login here
    } else {
      // Login failed
      print('Login failed');
      // Handle failed login here
    }

    setState(() {
      isLoading = false; // Stop loading
    });
  }

}
