import 'package:flutter/material.dart';

class CustomedBottomNavigationBar extends StatefulWidget {
  const CustomedBottomNavigationBar({super.key});

  @override
  State<CustomedBottomNavigationBar> createState() => _CustomedBottomNavigationBarState();
}

class _CustomedBottomNavigationBarState extends State<CustomedBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(tooltip: 'Home',icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add_outlined), label: 'Books'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined), label: 'Favourites'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
