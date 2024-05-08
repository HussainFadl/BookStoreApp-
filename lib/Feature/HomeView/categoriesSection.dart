import 'package:bookstore/Core/Util/custom_container.dart';
import 'package:bookstore/Core/Util/text_styles.dart';
import 'package:flutter/material.dart';

class CategoriesSectionforHomeView extends StatefulWidget {
  const CategoriesSectionforHomeView({super.key});

  @override
  State<CategoriesSectionforHomeView> createState() =>
      _CategoriesSectionforHomeViewState();
}

class _CategoriesSectionforHomeViewState
    extends State<CategoriesSectionforHomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Categories',
                style: getHeadlineStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_rounded))
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainer(),
            CustomContainer(),
            CustomContainer(),
          ],
        ),
      ],
    );
  }
}
