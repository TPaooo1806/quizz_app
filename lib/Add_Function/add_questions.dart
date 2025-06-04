import 'package:flutter/material.dart';
import 'package:quizz_app/Add_Function/add_questions_screen.dart';

class AddQuestionButton extends StatelessWidget {
  const AddQuestionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (ctx) => const AddQuestionsScreen()));
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 230, 200, 253),
        side: const BorderSide(color: Color.fromARGB(255, 230, 200, 253)),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      ),
      icon: const Icon(Icons.add),
      label: const Text(
        'Add Question',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
}
