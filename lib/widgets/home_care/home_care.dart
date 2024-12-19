import 'package:cosmetics_shop/models/home_care/step_item.dart';
import 'package:cosmetics_shop/widgets/home_care/home_care_step_card.dart';
import 'package:flutter/material.dart';

class HomeCare extends StatelessWidget {
  final List<StepItem> steps = [
    StepItem(title: 'Демакияж', image: 'assets/home_care/home_care_1.png'),
    StepItem(title: 'Очищение', image: 'assets/home_care/home_care_2.png'),
    StepItem(title: 'Сыворотка', image: 'assets/home_care/home_care_3.png'),
    StepItem(title: 'Дневной крем', image: 'assets/home_care/home_care_4.png'),
    StepItem(title: 'Демакияж', image: 'assets/home_care/home_care_1.png'),
  ];

  HomeCare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 22.0, top: 26),
            child: Text(
              'Моя схема домашнего ухода',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway-Bold',
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 23),
          SizedBox(
            height: 101,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: steps.length,
              itemBuilder: (context, index) {
                return HomeCareStepCard(
                  title: steps[index].title,
                  imagePath: steps[index].image,
                );
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 22, right: 16, bottom: 23, top: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Ответьте на 10 вопросов, \nи мы подберем нужный уход',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Raleway-Medium',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Добавьте действие кнопки
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Пройти тест',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Raleway-SemiBold',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
