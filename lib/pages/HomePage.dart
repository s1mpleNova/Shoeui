// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoeui/components/btm_nav.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MybtmNav(),
    );
  }
}
