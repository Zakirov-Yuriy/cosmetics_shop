import 'package:cosmetics_shop/widgets/catalog/catalog_item.dart';
import 'package:cosmetics_shop/widgets/catalog/test_block.dart';
import 'package:flutter/material.dart';
import 'skin_type_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/icons/search.png',
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 18),
            child: Container(
              color: Colors.grey,
              height: 1,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 39.0),
        child: ListView(
          children: [
            CatalogItem(title: 'Назначение'),
            CatalogItem(title: 'Тип средства'),
            CatalogItem(
              title: 'Тип кожи',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SkinTypeScreen()),
                );
              },
            ),
            CatalogItem(title: 'Линия косметики'),
            CatalogItem(title: 'Наборы'),
            CatalogItem(
              title: 'Акции',
              trailing: Padding(
                padding: const EdgeInsets.only(right: 268.0),
                child: Image.asset(
                  'assets/Frame_48.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            CatalogItem(title: 'Консультация \nс косметологом'),
            const TestBlock(), // Блок с тестом
          ],
        ),
      ),
    );
  }
}
