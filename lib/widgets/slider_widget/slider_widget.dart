import 'package:flutter/material.dart';
import '../../models/slider_item/slider_item_model.dart';
import 'slider_item.dart';

class SliderWidget extends StatefulWidget {
  final List<SliderItemModel> items;
  final PageController? pageController;

  const SliderWidget({
    Key? key,
    required this.items,
    this.pageController,
  }) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = widget.pageController ?? PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Слайдер
        SizedBox(
          height: 359,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.items.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return SliderItem(
                sliderItem: widget.items[index],
                currentPage: _currentPage,
                totalItems: widget.items.length,
              );
            },
          ),
        ),
      ],
    );
  }
}
