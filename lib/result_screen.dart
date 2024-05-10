import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_game/data/questions.dart';
import 'package:quiz_game/models/quiz_answer.dart';
import 'package:quiz_game/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.chosenAnswers, required this.onQuizRestart, super.key});

  final void Function() onQuizRestart;
  final List<String> chosenAnswers;

  List<QuizAnswer> get summaryData {
    final List<QuizAnswer> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(QuizAnswer(
        questionIndex: i,
        question: questions[i].text,
        correctAnswer: questions[i].answers[0],
        userAnswer: chosenAnswers[i],
      ));
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestions = questions.length;
    final correctQuestions = summaryData
        .where((element) => element.userAnswer == element.correctAnswer)
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctQuestions out of $totalQuestions questions correctly!',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white)),
              onPressed: () {
                onQuizRestart();
              },
              icon: const Icon(Icons.refresh),
              label: const Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
