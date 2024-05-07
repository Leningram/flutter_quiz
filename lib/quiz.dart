import 'package:flutter/material.dart';

import 'package:quiz_game/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 69, 111, 232),
                Color.fromARGB(255, 25, 176, 236)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: const StartScreen()),
      ),
    );
  }
}