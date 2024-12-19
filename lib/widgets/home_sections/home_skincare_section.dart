import 'package:flutter/material.dart';
import 'package:cosmetics_shop/widgets/skincare/skincare_carousel.dart';

class HomeSkincareSection extends StatelessWidget {
  HomeSkincareSection({super.key});
  final List<Map<String, String>> skincareSteps = [
    {'title': 'Наборы', 'image': 'assets/slider_1/Frame 1.png'},
    {'title': 'Для лица', 'image': 'assets/slider_1/Frame 2.png'},
    {'title': 'Для глаз', 'image': 'assets/slider_1/Frame 3.png'},
    {'title': 'Для тела', 'image': 'assets/slider_1/Frame 4.png'},
    {'title': 'Умывание', 'image': 'assets/slider_1/Frame 5.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SkincareCarousel(steps: skincareSteps),
        const SizedBox(height: 32),
      ],
    );
  }
}
