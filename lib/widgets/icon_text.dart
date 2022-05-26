import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData? icon;
  final double iconSize;
  final String? label;

  const IconText({this.icon, this.label, this.iconSize = 60.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(height: 10.0),
        Text(label ?? ''),
      ],
    );
  }
}
