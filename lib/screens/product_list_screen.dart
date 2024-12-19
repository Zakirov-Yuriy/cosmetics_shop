import 'package:cosmetics_shop/models/product_list/product_list_madel.dart';
import 'package:cosmetics_shop/screens/filters_screen.dart';
import 'package:cosmetics_shop/widgets/product_list/filter_button.dart';
import 'package:cosmetics_shop/widgets/product_list/product_card.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  final String skinType;

  const ProductListScreen({super.key, required this.skinType});

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  int _selectedIndex = 0;

  final List<Product> products = [
    Product(
      image: 'assets/product/product_1.png',
      title: 'Сыворотка',
      description: 'Unstress Total \nSerenity Serum',
      price: '10 195 ₽',
    ),
    Product(
      image: 'assets/product/product_2.png',
      title: 'Крем',
      description: 'Описание продукта 2',
      price: '2500₽',
    ),
    Product(
      image: 'assets/product/product_1.png',
      title: 'Тоник',
      description: 'Описание продукта 3',
      price: '1500₽',
    ),
    Product(
      image: 'assets/product/product_2.png',
      title: 'Маска',
      description: 'Описание продукта 4',
      price: '2000₽',
    ),
  ];

  String _getSkinTypeGenitive(String skinType) {
    switch (skinType) {
      case 'Жирная':
        return 'жирной';
      case 'Комбинированная':
        return 'комбинированной';
      case 'Нормальная':
        return 'нормальной';
      case 'Сухая':
        return 'сухой';
      default:
        return skinType.toLowerCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Средства \nдля ${_getSkinTypeGenitive(widget.skinType)} кожи',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway-SemiBold',
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${products.length} продуктов',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FiltersScreen(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/icons/FadersHorizontal.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  const labels = [
                    'Очищение',
                    'Увлажнение',
                    'Регенерация',
                    'Питание',
                  ];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: FilterButton(
                      label: labels[index],
                      isSelected: index == _selectedIndex,
                      onPressed: () => setState(() => _selectedIndex = index),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
