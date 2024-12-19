import 'package:flutter/material.dart';
import 'skincare_step_card.dart';

class SkincareCarousel extends StatelessWidget {
  final List<Map<String, String>> steps;

  const SkincareCarousel({
    Key? key,
    required this.steps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 102,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: steps.length,
            itemBuilder: (context, index) {
              final step = steps[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SkincareStepCard(
                  title: step['title']!,
                  imagePath: step['image']!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
