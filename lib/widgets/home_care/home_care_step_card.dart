import 'package:flutter/material.dart';

class HomeCareStepCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const HomeCareStepCard({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Container(
            width: 81,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Image.asset(
                imagePath,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway-SemiBold',
            ),
          ),
        ],
      ),
    );
  }
}
