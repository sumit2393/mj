import 'package:flutter/material.dart';
import 'package:flutter_app_mbj/SharedWidgets/Productlist.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  var wishlist = [
    {"image": "assets/images/Homepage/6.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/9.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/10.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/11.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/12.png", "name": "Fashion Necklace"},
    {"image": "assets/images/Homepage/13.png", "name": "Fashion Necklace"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        body: ProductList(wishlist, Icon(Icons.close, color: Colors.grey)));
  }
}
