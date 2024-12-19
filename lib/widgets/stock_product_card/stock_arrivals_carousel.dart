import 'package:flutter/material.dart';
import 'stock_product_card.dart';

class StockArrivalsCarousel extends StatelessWidget {
  final String title;
  final String underlineImagePath;
  final List<Map<String, String>> products;

  const StockArrivalsCarousel({
    Key? key,
    required this.title,
    required this.underlineImagePath,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Заголовок
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Raleway-SemiBold',
              color: Colors.black,
            ),
          ),
        ),

        // Подчеркивание
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 4.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              underlineImagePath,
              width: 118,
              height: 4,
            ),
          ),
        ),
        const SizedBox(height: 24),

        // Слайдер с товарами
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: StockProductCard(
                  title: product['title']!,
                  description: product['description']!,
                  price: product['price']!,
                  oldPrice: product['oldPrice']!,
                  imagePath: product['image']!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
