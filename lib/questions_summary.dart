import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.amber,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (data['question']).toString(),
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            (data['user_answer']).toString(),
                            textAlign: TextAlign.left,
                            style: const TextStyle(color: Colors.redAccent),
                          ),
                          Text(
                            (data['correct_answer']).toString(),
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
