import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 128, 39, 176),
        body: Container(
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
