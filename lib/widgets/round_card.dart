import 'package:flutter/material.dart';

import '../consts.dart';

class RoundCard extends StatelessWidget {
  final Widget? child;
  final bool selected;

  const RoundCard({this.child, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: selected ? kSelectedColor : kUnselectedColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
