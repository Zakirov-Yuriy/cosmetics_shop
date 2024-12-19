import 'package:flutter/material.dart';
import 'custom_button.dart';

class FourButtonsWidget extends StatelessWidget {
  final List<String> buttonTexts;
  final List<VoidCallback?>? buttonActions;

  const FourButtonsWidget({
    super.key,
    required this.buttonTexts,
    this.buttonActions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: buttonTexts[0],
              onPressed: buttonActions?[0],
            ),
            CustomButton(
              text: buttonTexts[1],
              onPressed: buttonActions?[1],
            ),
          ],
        ),
        const SizedBox(height: 8), // Расстояние между рядами кнопок
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              text: buttonTexts[2],
              onPressed: buttonActions?[2],
            ),
            CustomButton(
              text: buttonTexts[3],
              onPressed: buttonActions?[3],
            ),
          ],
        ),
      ],
    );
  }
}
