import 'package:flutter/material.dart';
import 'package:cosmetics_shop/screens/product_list_screen.dart';

class SkinTypeOption extends StatelessWidget {
  final String skinType;

  const SkinTypeOption({
    super.key,
    required this.skinType,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        skinType,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Raleway-SemiBold',
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductListScreen(skinType: skinType),
          ),
        );
      },
    );
  }
}
