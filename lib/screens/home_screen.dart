import 'package:cosmetics_shop/data/hit_products_data.dart';
import 'package:cosmetics_shop/data/stock_products_data.dart';
import 'package:flutter/material.dart';
import 'package:cosmetics_shop/widgets/four_buttons/four_buttons_widget.dart';
import 'package:cosmetics_shop/widgets/product_card/hit_arrivals_carousel.dart';
import 'package:cosmetics_shop/widgets/home_care/home_care.dart';
import 'package:cosmetics_shop/widgets/stock_product_card/stock_arrivals_carousel.dart';

import '../widgets/home_sections/home_header_section.dart';
import '../widgets/home_sections/home_skincare_section.dart';
import '../widgets/home_sections/home_new_arrivals_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const HomeHeaderSection(),
            HomeSkincareSection(),
            const HomeNewArrivalsSection(),
            HomeCare(),
            const SizedBox(height: 24),
            StockArrivalsCarousel(
              title: 'Акции',
              underlineImagePath: 'assets/Rectangle/Rectangle_2.png',
              products: stockProducts,
            ),
            const SizedBox(height: 41),
            const FourButtonsWidget(
              buttonTexts: [
                'Для очищения',
                'Для увлажнения',
                'Для питания',
                'Для омоложения',
              ],
            ),
            const SizedBox(height: 41),
            HitArrivalsCarousel(
              title: 'Хиты',
              products: hitProducts,
            ),
          ],
        ),
      ),
    );
  }
}
