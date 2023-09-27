import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.ontap, {super.key});

  final String answer;
  final void Function() ontap;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 3,
          shadowColor: Colors.greenAccent,
          backgroundColor: Colors.green,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: ontap,
        child: Text(
          answer,
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
