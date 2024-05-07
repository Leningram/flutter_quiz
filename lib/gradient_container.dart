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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 300),
            const SizedBox(height: 60),
            const Text('Learn Flutter the fun way!',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            const SizedBox(height: 60),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                    backgroundColor: Colors.blue[800]),
                onPressed: () {},
                child: const Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
