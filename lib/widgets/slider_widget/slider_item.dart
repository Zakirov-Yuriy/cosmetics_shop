import 'package:flutter/material.dart';
import '../../models/slider_item/slider_item_model.dart';

class SliderItem extends StatelessWidget {
  final SliderItemModel sliderItem;
  final int currentPage;
  final int totalItems;

  const SliderItem({
    super.key,
    required this.sliderItem,
    required this.currentPage,
    required this.totalItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(sliderItem.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Индикаторы точек
          Positioned(
            left: 18,
            top: 50, // Расположение в левом нижнем углу
            child: Row(
              children: List.generate(
                totalItems,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: currentPage == index ? 8.0 : 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: currentPage == index
                        ? const Color.fromRGBO(217, 217, 217, 1)
                        : const Color.fromRGBO(217, 217, 217, 50),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
            ),
          ),
          // Текст и кнопка
          Positioned(
            left: 24,
            bottom: 29, // Поднимаем текст выше индикаторов
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sliderItem.title,
                  style: const TextStyle(
                    fontSize: 35.05,
                    fontFamily: 'VelaSans-SemiBold',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8), // Расстояние 8 пикселей
                Text(
                  sliderItem.description,
                  style: const TextStyle(
                    fontFamily: 'VelaSans-Regular',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Кнопка "Перейти к акции"
          Positioned(
            right: 12,
            bottom: 29,
            child: ElevatedButton(
              onPressed: () {
                // Навигация по действию
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // Прозрачный фон
                elevation: 0, // Убираем тень
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(3), // Округленные углы с радиусом 3
                  side: const BorderSide(
                      color: Colors.white, width: 1), // Белый контур
                ),
                fixedSize: const Size(
                    120, 36), // Устанавливаем фиксированную ширину и высоту
                padding:
                    const EdgeInsets.only(bottom: 0), // Отступы внутри кнопки
              ),
              child: const Text(
                "Перейти к акции",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Raleway-SemiBold',
                  // Цвет текста
                  fontSize: 12, // Размер текста 12
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
