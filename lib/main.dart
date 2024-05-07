import 'package:flutter/material.dart';
import 'package:quiz_game/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: StartScreen(
          beginColor: Color.fromARGB(255, 69, 111, 232),
          endColor: Color.fromARGB(255, 25, 176, 236),
        ),
      ),
    ),
  );
}
