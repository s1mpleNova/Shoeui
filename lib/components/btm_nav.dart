import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MybtmNav extends StatelessWidget {
  const MybtmNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.grey[200],
        activeColor: Colors.grey[3],
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
