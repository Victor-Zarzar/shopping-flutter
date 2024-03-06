import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
  });
}

final List<Product> products = [
  Product(
    title: "Wireless Headphones",
    description:
        "Wireless headphones with excellent sound quality and modern design. Features 40mm drivers for powerful bass and crisp highs. The battery lasts up to 20 hours on a single charge. The over-ear design with soft ear pads provides comfort for hours of wear. Available in three vibrant colors. Bluetooth 5.0 technology ensures stable and seamless connectivity.",
    image: "assets/wireless.png",
    price: 120,
    colors: [
      ProductColor.primaryColor,
      ProductColor.secondaryColor,
      ProductColor.thirdColor,
    ],
    category: "Headphones",
    rate: 4.8,
  ),
  Product(
    title: "Woman Sweter",
    description:
        "Women's stylish sweater with a flattering fit. Made from a soft, lightweight knit material that provides warmth without the bulk. Features a v-neckline and long sleeves for a classic look. Available in three versatile neutral colors that pair perfectly with any outfit. The ribbed hemline and cuffs add subtle detailing. An essential piece for any woman's wardrobe when the weather turns cool.",
    image: "assets/sweet.png",
    price: 120,
    colors: [
      ProductColor.fourthColor,
      ProductColor.fifithColor,
      ProductColor.sixthColor,
    ],
    category: "Woman Fashion",
    rate: 4.8,
  ),
  Product(
    title: "Smart Watch",
    description:
        "Smart watch with fitness tracking and smartphone notifications. Features heart rate monitoring, sleep tracking, step counting, and more. The slim, lightweight design is comfortable for all-day wear. The long-lasting battery provides up to 10 days of use on a single charge. The high-resolution color touchscreen allows you to easily view your stats and notifications. Customizable watch faces let you personalize your look. Pairs with your smartphone via Bluetooth to receive call, text, and app alerts on your wrist. The perfect fitness companion to help you achieve your health goals.",
    image: "assets/miband.jpg",
    price: 55,
    colors: [
      ProductColor.primaryColor,
    ],
    category: "Watch",
    rate: 4.8,
  ),
];
