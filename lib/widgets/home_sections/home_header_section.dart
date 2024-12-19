import 'package:cosmetics_shop/data/slider_widget_data.dart';
import 'package:flutter/material.dart';
import 'package:cosmetics_shop/widgets/slider_widget/slider_widget.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderWidget(items: items),
        const SizedBox(height: 25),
      ],
    );
  }
}
