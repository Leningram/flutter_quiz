import 'package:flutter/material.dart';
import 'package:quiz_game/models/quiz_answer.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<QuizAnswer> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final bool isCorrect = data.correctAnswer == data.userAnswer;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCorrect ? Colors.green[300] : Colors.red[300],
                  ),
                  child: Center(
                    child: Text((data.questionIndex + 1).toString()),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.question, style: const TextStyle(color: Colors.white),),
                      const SizedBox(height: 5),
                      Text(data.correctAnswer,
                          style: const TextStyle(color: Colors.white70)),
                      Text(data.userAnswer, style: TextStyle(
                            color:
                                isCorrect ? const Color.fromARGB(255, 10, 88, 14) : const Color.fromARGB(255, 112, 10, 9),
                          )),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
