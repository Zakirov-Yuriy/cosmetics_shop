import 'package:cosmetics_shop/widgets/product_carousel/product_carousel.dart';
import 'package:flutter/material.dart';

class NewArrivalsCarousel extends StatelessWidget {
  const NewArrivalsCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> newArrivals = [
      {
        'title': 'Сыворотка',
        'description': 'Unstress Total \nSerenity Serum',
        'price': '10 195 ₽',
        'image': 'assets/product/product_1.png',
      },
      {
        'title': 'Тоник',
        'description': 'Unstress Revitalizing \nToner',
        'price': '3095 ₽',
        'image': 'assets/product/product_2.png',
      },
      {
        'title': 'Сыворотка',
        'description': 'Unstress Total \nSerenity Serum',
        'price': '10 195 ₽',
        'image': 'assets/product/product_1.png',
      },
    ];

    return ProductCarousel(
      title: 'Новинки',
      underlineImagePath: 'assets/Rectangle/Rectangle.png',
      products: newArrivals,
    );
  }
}
