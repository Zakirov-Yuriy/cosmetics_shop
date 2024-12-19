import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String imagePath;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 161,
          height: 187,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[200],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            fontFamily: 'Raleway-Medium',
            color: Color.fromRGBO(0, 0, 0, 0.8),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway-Bold',
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          price,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat-SemiBold',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
