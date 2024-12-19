import 'package:flutter/material.dart';

class TestBlock extends StatelessWidget {
  const TestBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 111.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(244, 244, 244, 1),
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.only(top: 24, left: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Составим схему идеального \nдомашнего ухода',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Raleway-SemiBold',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '10 вопросов о вашей коже',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: 'Raleway-Medium',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Логика перехода на тест
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(43, 43, 43, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Пройти тест',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Raleway-Bold',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
