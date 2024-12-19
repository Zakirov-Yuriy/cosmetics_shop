import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent, // Прозрачный фон
        side: const BorderSide(color: Colors.grey, width: 1), // Серый контур
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9), // Скруглённые углы
        ),
        minimumSize: const Size(190, 60), // Размер кнопки
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black, // Чёрный текст
          fontSize: 16, // Размер текста
        ),
      ),
    );
  }
}
