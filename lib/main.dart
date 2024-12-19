import 'package:cosmetics_shop/widgets/custom_nav/%D1%81ustom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

/// Основное приложение
void main() {
  runApp(MyApp()); // Запуск приложения
}

/// Главный виджет приложения.
/// Здесь происходит настройка темы и главного экрана.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Отключает баннер отладки
      title: 'Косметика', // Заголовок приложения
      theme: ThemeData(
        primarySwatch: Colors.blue, // Основной цвет
        visualDensity:
            VisualDensity.adaptivePlatformDensity, // Адаптация плотности
        fontFamily: 'Raleway-SemiBold', // Настройка шрифта
      ),
      home: const CustomBottomNavigationBar(), // Главное содержимое приложения
    );
  }
}
