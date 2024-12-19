import 'package:flutter/material.dart';
import 'package:cosmetics_shop/widgets/product_carousel/new_arrivals_carousel.dart';

class HomeNewArrivalsSection extends StatelessWidget {
  const HomeNewArrivalsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewArrivalsCarousel(),
        const SizedBox(height: 40),
      ],
    );
  }
}
