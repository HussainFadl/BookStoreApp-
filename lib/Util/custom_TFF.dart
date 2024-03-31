import 'package:bookstore/Util/app_colors.dart';
import 'package:flutter/material.dart';

class MyTTF extends StatelessWidget {
  var prefixIcon;

  var labelText;

  var suffixIcon;

  MyTTF(
      {super.key,
      required this.prefixIcon,
      required this.labelText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            prefixIcon: prefixIcon,
            labelText: labelText,
            suffixIcon: suffixIcon,
            iconColor: AppColors.primaryColor,
            fillColor: AppColors.primaryColor,
            labelStyle: TextStyle(color: AppColors.primaryColor)));
  }
}
