import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {required this.beginColor, required this.endColor, super.key});

  final Color beginColor;
  final Color endColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [beginColor, endColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
    );
  }
}
