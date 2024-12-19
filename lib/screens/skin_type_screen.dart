import 'package:cosmetics_shop/widgets/skin_type/skin_type_option.dart';
import 'package:flutter/material.dart';

class SkinTypeScreen extends StatelessWidget {
  const SkinTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'По типу кожи',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Raleway-Bold',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 16.0, bottom: 32),
        children: const [
          SkinTypeOption(skinType: 'Жирная'),
          SkinTypeOption(skinType: 'Комбинированная'),
          SkinTypeOption(skinType: 'Нормальная'),
          SkinTypeOption(skinType: 'Сухая'),
        ],
      ),
    );
  }
}
