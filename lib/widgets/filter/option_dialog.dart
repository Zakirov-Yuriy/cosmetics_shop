import 'package:flutter/material.dart';

class OptionDialog extends StatelessWidget {
  final String title;
  final List<String> options;
  final String currentValue;

  const OptionDialog({
    Key? key,
    required this.title,
    required this.options,
    required this.currentValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(title),
      children: options
          .map(
            (option) => SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, option);
              },
              child: Text(
                option,
                style: TextStyle(
                  color: option == currentValue ? Colors.blue : Colors.black,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
