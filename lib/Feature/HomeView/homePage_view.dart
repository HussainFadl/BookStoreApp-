import 'package:bookstore/Core/Util/app_functions.dart';
import 'package:bookstore/Core/Util/customed_bottomNavigationBar.dart';
import 'package:bookstore/Feature/HomeView/best_seller_list.dart';
import 'package:bookstore/Feature/HomeView/card_swiper.dart';
import 'package:bookstore/Feature/HomeView/categoriesSection.dart';
import 'package:bookstore/Feature/HomeView/crousel.dart';
import 'package:bookstore/Feature/HomeView/heading.dart';
import 'package:bookstore/Feature/HomeView/new_arrivals.dart';
import 'package:bookstore/Feature/LogInView/logIn_view.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                setState(() {
                  AppFunctions.getMoveToNextPage(
                      context: context, theNextScreen: const LogInView());
                });
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              HeadingforHomeView(),
              Divider(
                height: 20,
                color: Color(0x00000000),
              ),
              SlidingCrouselforHomeView(),
              Divider(
                height: 20,
                color: Color(0x00000000),
              ),
              BestSellerList(),
              Divider(
                height: 20,
                color: Color(0x00000000),
              ),
              CardSwiperforHomeView(),
              CategoriesSectionforHomeView(),
              NewArrivalsList(),
            ],
          ),
        ),
        bottomNavigationBar: const CustomedBottomNavigationBar());
  }
}
