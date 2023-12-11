// wishlist_model.dart
import 'package:flutter/foundation.dart';

class Product {
  final String img;
  final String text;
  final String subtext;
  final int harga;

  Product({
    required this.img,
    required this.text,
    required this.subtext,
    required this.harga,
  });
}

class Cartmodel with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void addToCart(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _items.remove(product);
    notifyListeners();
  }
}
