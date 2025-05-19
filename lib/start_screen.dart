import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          const SizedBox(height: 80),
          const Text(
            'Quizz flutter',
            style: TextStyle(
              color: Color.fromARGB(255, 182, 166, 23),
              fontSize: 26,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 221, 6, 185),
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz', style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}
