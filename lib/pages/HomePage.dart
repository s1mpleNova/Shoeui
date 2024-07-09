// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoeui/components/btm_nav.dart';
import 'package:shoeui/pages/CartPage.dart';
import 'package:shoeui/pages/ShopPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //cart page
    const Cartpage(),

    //shop page
    const ShopPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MybtmNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
