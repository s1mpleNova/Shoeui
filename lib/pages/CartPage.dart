import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Text(
                    "my cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.getCartItem().length,
                      itemBuilder: (context, index) {
                        Shoe individualShoe = value.getCartItem()[index];

                        //return the cart item
                        return CartItem(
                          shoe: individualShoe,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ));
  }
}
