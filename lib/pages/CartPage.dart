import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Text(
                    "my cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ));
  }
}
