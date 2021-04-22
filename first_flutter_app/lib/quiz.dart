import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  // named constructor
  Quiz({this.questions, this.questionIndex, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            // Note: map doesn't alter the original questions list instead to makes copy of it and retuns a new list
            .map((answer) {
          // onPressed is a function with no arguments we can't pass it directly
          // but we can pass anonymous function that recieves answerQuestion function
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
      ],
    );
  }
}
