import 'package:bookstore/Core/Util/app_colors.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiperforHomeView extends StatefulWidget {
  const CardSwiperforHomeView({super.key});

  @override
  State<CardSwiperforHomeView> createState() => _CardSwiperforHomeViewState();
}

class _CardSwiperforHomeViewState extends State<CardSwiperforHomeView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 500,
      child: Swiper(
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: AppColors.navyBlue, width: 10)),
        ),
        pagination: const SwiperPagination(),
        itemHeight: 50,
        scale: 0.3,
        itemWidth: 50,
        containerHeight: 50,
        containerWidth: 50,
      ),
    );
  }
}
