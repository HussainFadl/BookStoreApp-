import 'package:bookstore/Feature/logIn_view.dart';
import 'package:bookstore/Util/app_colors.dart';
import 'package:bookstore/Util/app_functions.dart';
import 'package:bookstore/Util/text_styles.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Center(
              child: Text(
                'KETABI',
                style: getHeadlineStyle(),
              ),
            ),
          ),
          Text(
            'Join Us!',
            style:
                getHeadlineStyle(fontSize: 25, color: AppColors.primaryColor),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Already have an account?',
                ),
                TextButton(
                  onPressed: () {
                    AppFunctions.getMoveToNextPage(
                        context: context, theNextScreen: const LogInView());
                  },
                  child: const Text('LogIn'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                )),
                const SizedBox(height: 10),
                TextFormField(
                    decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                )),
                const SizedBox(height: 10),
                TextFormField(
                    decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                )),
                const SizedBox(height: 10),
                TextFormField(
                    decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
