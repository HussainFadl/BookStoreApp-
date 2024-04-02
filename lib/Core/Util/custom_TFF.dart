import 'package:bookstore/Core/Util/app_colors.dart';
import 'package:flutter/material.dart';

class MyTTF extends StatelessWidget {
  var prefixIcon;

  var labelText;

  var suffixIcon;

  final void Function(String)? onChanged; // Make onChanged nullable

  var initialValue;

  MyTTF(
      {super.key,
      required this.prefixIcon,
      required this.labelText,
      this.suffixIcon,
        this.initialValue,
       this.onChanged, });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            prefixIcon: prefixIcon,
            labelText: labelText,
            suffixIcon: suffixIcon,
            iconColor: AppColors.primaryColor,
            fillColor: AppColors.primaryColor,
            labelStyle: TextStyle(color: AppColors.primaryColor)),
    onChanged: onChanged,);
  }
}
