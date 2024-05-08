import 'package:bookstore/Core/Util/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlidingCrouselforHomeView extends StatefulWidget {
  const SlidingCrouselforHomeView({super.key});

  @override
  State<SlidingCrouselforHomeView> createState() =>
      _SlidingCrouselforHomeViewState();
}

class _SlidingCrouselforHomeViewState extends State<SlidingCrouselforHomeView> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 200.0,
          aspectRatio: 16 / 9,
          
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          enlargeCenterPage: true,
          enlargeFactor: 0.2),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'text $i',
                  style: const TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
