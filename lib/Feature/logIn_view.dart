import 'package:bookstore/Feature/register_view.dart';
import 'package:bookstore/Util/app_colors.dart';
import 'package:bookstore/Util/app_functions.dart';
import 'package:bookstore/Util/custom_TFF.dart';
import 'package:bookstore/Util/custom_button.dart';
import 'package:bookstore/Util/text_styles.dart';
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
            MyTTF(
                prefixIcon: Icon(
                  Icons.email,
                  color: AppColors.primaryColor,
                ),
                labelText: 'Email'),
            const SizedBox(height: 20),
            MyTTF(
              prefixIcon: Icon(
                Icons.lock,
                color: AppColors.primaryColor,
              ),
              labelText: 'Password',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(onPressed: () {}, text: 'LogIn')
          ],
        ),
      ),
    );
  }
}
