import 'package:flutter/material.dart';

/// Функция для создания кастомного BottomNavigationBarItem
BottomNavigationBarItem buildCustomNavBarItem({
  required String label,
  required String iconPath,
  required bool isSelected,
}) {
  return BottomNavigationBarItem(
    icon: Image.asset(
      iconPath,
      width: 24,
      height: 24,
      color: isSelected ? Colors.black : Colors.grey,
    ),
    label: label,
  );
}
