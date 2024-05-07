import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
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
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 60),
            const Text('Learn Flutter the fun way!',
                style: TextStyle(
                    color: Color.fromARGB(255, 207, 230, 247), fontSize: 24)),
            const SizedBox(height: 60),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.white)),
                onPressed: () {},
                icon: const Icon(Icons.arrow_right),
                label: const Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
