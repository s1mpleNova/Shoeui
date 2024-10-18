// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeui/components/shoe_tile.dart';
import 'package:shoeui/models/cart.dart';

import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //method to add new item to the shop
  void addShoe(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    //show dialog for successfull addition to the cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('added successfully'),
              content: Text('check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //searchbar
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "search",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks of the Day⚡",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "see all ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoe(shoe),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
