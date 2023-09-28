import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.backToHome, this.answers, {super.key});

  final void Function() backToHome;
  final List<String> answers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < answers.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': answers[i]
      });
    }

    return summaryData;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where(
      (data) {
        return data['correct_answer'] == data['user_answer'];
      },
    ).length;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
              style: GoogleFonts.mooli(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: backToHome,
              icon: const Icon(Icons.restart_alt_rounded),
              label: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
