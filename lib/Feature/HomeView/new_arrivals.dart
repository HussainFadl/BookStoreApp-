import 'package:bookstore/Core/Util/text_styles.dart';
import 'package:flutter/material.dart';

class NewArrivalsList extends StatefulWidget {
  const NewArrivalsList({super.key});

  @override
  State<NewArrivalsList> createState() => _NewArrivalsListState();
}

class _NewArrivalsListState extends State<NewArrivalsList> {
  @override
  Widget build(BuildContext context) {
    {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'New Arrivals',
                  style: getHeadlineStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_forward))
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: 1000,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text('data '),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 5,
                  );
                },
                itemCount: 150),
          ),
        ],
      );
    }
  }
}
