import 'package:flutter/material.dart';

class StockProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String oldPrice;
  final String imagePath;

  const StockProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 161,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Изображение товара
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

          // Название товара
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              fontFamily: 'Raleway-Medium',
              color: Color.fromRGBO(0, 0, 0, 80),
            ),
          ),
          const SizedBox(height: 4),

          // Описание товара
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'Raleway-SemiBold',
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),

          // Цена товара и зачеркнутая цена
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat-SemiBold',
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                oldPrice,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
