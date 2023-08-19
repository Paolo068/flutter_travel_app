import 'package:flutter/material.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Widget? child;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  const AppButtons(
      {super.key,
      required this.size,
      required this.backgroundColor,
      required this.borderColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
          child: child,
    );
  }
}
