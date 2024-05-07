import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({ required this.answer, required this.onTap,super.key});
  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(answer), style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 13, 50, 99),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)
    ));
  }
}
