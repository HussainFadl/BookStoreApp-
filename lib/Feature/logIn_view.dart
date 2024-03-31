import 'package:bookstore/Feature/register_view.dart';
import 'package:bookstore/Util/app_functions.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

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
    );
  }
}
