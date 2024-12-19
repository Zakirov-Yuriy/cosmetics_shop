import 'package:flutter/material.dart';

class CatalogItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;

  const CatalogItem({
    Key? key,
    required this.title,
    this.onTap,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'Raleway-SemiBold',
        ),
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
