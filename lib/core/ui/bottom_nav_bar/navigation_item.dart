import 'package:fashion_ecommerce/core/ui/cart/cart_screen.dart';
import 'package:fashion_ecommerce/core/ui/cart/check_out_screen.dart';
import 'package:fashion_ecommerce/core/ui/discover/discover_screen.dart';
import 'package:fashion_ecommerce/core/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigatorItem {
  final String label;
  final IconData iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Home", FontAwesomeIcons.homeAlt, 0, const HomeScreen()),
  NavigatorItem("Cart", FontAwesomeIcons.shoppingCart, 1, const CartScreen()),
  NavigatorItem("Chat", FontAwesomeIcons.message, 2, const CheckOutScreen()),
  NavigatorItem("Favorite", Icons.favorite, 3, Container()),
  NavigatorItem("Profile", FontAwesomeIcons.person, 4, Container()),
];
