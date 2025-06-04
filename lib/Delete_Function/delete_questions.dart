import 'package:flutter/material.dart';
import 'package:quizz_app/Delete_Function/delete_questions_screen.dart';

class DeleteQuestionButton extends StatelessWidget {
  const DeleteQuestionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx) => const DeleteQuestionsScreen()),
        );
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 230, 200, 253),
        side: const BorderSide(color: Color.fromARGB(255, 230, 200, 253)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      ),
      icon: const Icon(Icons.delete),
      label: const Text(
        'Manage',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
