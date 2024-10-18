import 'package:flutter/material.dart';
import 'package:shoeui/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'jordan 1s',
        price: '2300',
        description: 'best class',
        imagePath: 'lib/images/img3.jpg'),
    Shoe(
        name: 'travis dunks',
        price: '3200',
        description: 'best class',
        imagePath: 'lib/images/img4.jpg'),
    Shoe(
        name: 'pump jumps',
        price: '4320',
        description: 'best class',
        imagePath: 'lib/images/img5.jpg'),
    Shoe(
        name: "Zoom Freaks",
        price: '3000',
        description: "the best in comfort",
        imagePath: 'lib/images/img2.jpg')
  ];

  //list of items in cart
  List<Shoe> cartItem = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get the cart
  List<Shoe> getCartItem() {
    return cartItem;
  }

  //add the item to the cart
  void addToCart(Shoe shoe) {
    cartItem.add(shoe);
    notifyListeners();
  }

  //remove item form the cart
  void removeItem(Shoe shoe) {
    cartItem.remove(shoe);
    notifyListeners();
  }

  void addShoe(Shoe shoe) {}
}
