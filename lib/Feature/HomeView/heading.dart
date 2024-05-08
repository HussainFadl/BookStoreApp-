import 'package:bookstore/Core/Util/text_styles.dart';
import 'package:flutter/material.dart';

class HeadingforHomeView extends StatelessWidget {
  const HeadingforHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '      Hi, Hussain',
            style: getHeadlineStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 25, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 5),
                const Icon(Icons.filter_list),
                const Spacer(),
                Text(
                  'What are you reading\n today?',
                  style: getSmallStyle(fontSize: 17),
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundImage: AssetImage('Assets/MyPhoto.jpg'),
                  radius: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
