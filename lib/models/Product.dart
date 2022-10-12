import 'package:flutter/material.dart';
import 'package:stylish/l10n/localization.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> get_demo_product(BuildContext context) {
  return [
    Product(
      image: "assets/images/product_0.png",
      title: Localization.of(context)!.long_sleeve,
      price: 165,
      bgColor: const Color(0xFFFEFBF9),
    ),
    Product(
      image: "assets/images/product_1.png",
      title: Localization.of(context)!.casual_henley,
      price: 99,
    ),
    Product(
      image: "assets/images/product_2.png",
      title: Localization.of(context)!.curved_hem,
      price: 180,
      bgColor: const Color(0xFFF8FEFB),
    ),
    Product(
      image: "assets/images/product_3.png",
      title: Localization.of(context)!.casual_nolin,
      price: 149,
      bgColor: const Color(0xFFEEEEED),
    ),
  ];
}
