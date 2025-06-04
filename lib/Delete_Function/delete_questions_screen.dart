import 'package:flutter/material.dart';
import 'package:quizz_app/edit_questions_screen.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/models/quizz_question.dart';

class DeleteQuestionsScreen extends StatefulWidget {
  const DeleteQuestionsScreen({super.key});

  @override
  State<DeleteQuestionsScreen> createState() => _DeleteQuestionsScreenState();
}

class _DeleteQuestionsScreenState extends State<DeleteQuestionsScreen> {
  void _editQuestion(QuizzQuestion question, int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => EditQuestionScreen(question: question, index: index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Questions'),
        backgroundColor: const Color.fromARGB(255, 76, 176, 26),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 103, 17, 17),
              Color.fromARGB(255, 13, 124, 184),
            ],
            begin: Alignment.topRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: QuestionData.questions.length,
          itemBuilder: (context, index) {
            final question = QuestionData.questions[index];
            return Card(
              color: const Color.fromARGB(255, 17, 113, 100),
              child: ListTile(
                title: Text(
                  question.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Correct answer: ${question.answers[0]}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 230, 200, 253),
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.white),
                      onPressed: () => _editQuestion(question, index),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.white),
                      onPressed: () {
                        setState(() {
                          QuestionData.deleteQuestion(index);
                        });
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
