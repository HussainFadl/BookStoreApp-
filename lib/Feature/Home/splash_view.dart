import 'package:bookstore/Feature/register_view.dart';
import 'package:bookstore/Util/app_functions.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      AppFunctions.getMoveToNextPage(
          context: context, theNextScreen: const RegisterView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Assets/booksImage.jpg'),
          ],
        ),
      ),
    );
  }
}
