import 'dart:math';

import 'package:quizz_app/models/quizz_question.dart';

class QuestionData {
  static final List<QuizzQuestion> _questions = [
    QuizzQuestion(
      text: 'What is your favorite color?',
      answers: ['Red', 'Blue', 'Green', 'Yellow'],
    ),
    QuizzQuestion(
      text: 'What is your favorite animal?',
      answers: ['Dog', 'Cat', 'Bird', 'Fish'],
    ),
    QuizzQuestion(
      text: 'What is your favorite food?',
      answers: ['Pizza', 'Burger', 'Pasta', 'Salad'],
    ),
    QuizzQuestion(
      text: 'What is your favorite season?',
      answers: ['Spring', 'Summer', 'Autumn', 'Winter'],
    ),
    QuizzQuestion(
      text: 'What is your favorite sport?',
      answers: ['Football', 'Basketball', 'Tennis', 'Cricket'],
    ),
    QuizzQuestion(
      text: 'What is your favorite movie genre?',
      answers: ['Action', 'Comedy', 'Drama', 'Horror'],
    ),
    QuizzQuestion(
      text: 'What is your favorite music genre?',
      answers: ['Pop', 'Rock', 'Hip-Hop', 'Classical'],
    ),
    QuizzQuestion(
      text: 'What is your favorite book genre?',
      answers: ['Fiction', 'Non-Fiction', 'Mystery', 'Fantasy'],
    ),
    QuizzQuestion(
      text: 'What is your favorite hobby?',
      answers: ['Reading', 'Traveling', 'Cooking', 'Gaming'],
    ),
    QuizzQuestion(
      text: 'What is your favorite vacation destination?',
      answers: ['Beach', 'Mountains', 'City', 'Countryside'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of cuisine?',
      answers: ['Italian', 'Chinese', 'Mexican', 'Indian'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of weather?',
      answers: ['Sunny', 'Rainy', 'Snowy', 'Cloudy'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of drink?',
      answers: ['Coffee', 'Tea', 'Juice', 'Soda'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of dessert?',
      answers: ['Cake', 'Ice Cream', 'Cookies', 'Brownies'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of exercise?',
      answers: ['Running', 'Yoga', 'Weightlifting', 'Swimming'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of art?',
      answers: ['Painting', 'Sculpture', 'Photography', 'Drawing'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of technology?',
      answers: ['Smartphone', 'Laptop', 'Tablet', 'Smartwatch'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of game?',
      answers: ['Board Games', 'Video Games', 'Card Games', 'Outdoor Games'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of fashion?',
      answers: ['Casual', 'Formal', 'Sporty', 'Vintage'],
    ),
    QuizzQuestion(
      text: 'What is your favorite type of pet?',
      answers: ['Dog', 'Cat', 'Fish', 'Bird'],
    ),
  ];

  static List<QuizzQuestion> get questions => _questions;

  static void deleteQuestion(int index) {
    _questions.removeAt(index);
  }

  static void updateQuestion(int index, QuizzQuestion question) {
    _questions[index] = question;
  }

  static void addQuestion(QuizzQuestion question) {
    _questions.add(question);
  }

  static List<QuizzQuestion> getShuffledQuestions() {
    final shuffledList = List<QuizzQuestion>.from(_questions);
    shuffledList.shuffle();
    return shuffledList;
  }
}
