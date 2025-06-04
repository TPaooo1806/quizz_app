import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/models/quizz_question.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/question_screen.dart';
import 'package:quizz_app/results_screen.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  late List<QuizzQuestion> currentQuestions;

  @override
  void initState() {
    super.initState();
    currentQuestions = QuestionData.getShuffledQuestions();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == currentQuestions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      currentQuestions = QuestionData.getShuffledQuestions();
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
        questions: currentQuestions,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        questions: currentQuestions,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
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
          child: screenWidget,
        ),
      ),
    );
  }
}
