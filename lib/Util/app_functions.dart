import 'package:flutter/material.dart';

class AppFunctions {
  static getMoveToNextPage({
    required context,
    required theNextScreen,
  }) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => theNextScreen));
  }
}
