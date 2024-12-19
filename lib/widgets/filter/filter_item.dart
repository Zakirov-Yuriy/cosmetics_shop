import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback onTap;

  const FilterItem({
    super.key,
    required this.label,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway-SemiBold',
                color: Colors.black,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway-Medium',
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
