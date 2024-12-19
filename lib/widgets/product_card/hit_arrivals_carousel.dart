import 'package:flutter/material.dart';
import 'product_card.dart';

class HitArrivalsCarousel extends StatelessWidget {
  final String title;
  final List<Map<String, String>> products;

  const HitArrivalsCarousel({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 4.0),
          child: Image.asset(
            'assets/Rectangle/Rectangle_3.png',
            width: 118,
            height: 4,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 287,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ProductCard(
                  title: product['title']!,
                  description: product['description']!,
                  price: product['price']!,
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
