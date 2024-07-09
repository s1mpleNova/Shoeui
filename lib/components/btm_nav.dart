import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MybtmNav extends StatelessWidget {
  void Function(int)? onTabChange;
  MybtmNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.grey[200],
        activeColor: Colors.grey[3],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 14,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: "Home",
          ),
          GButton(
            icon: Icons.card_travel_outlined,
            text: "Cart",
          )
        ],
      ),
    );
  }
}
