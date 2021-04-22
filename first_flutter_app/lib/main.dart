import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implements create state
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // creating a map
  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 7},
        {'text': 'Yellow', 'score': 3},
        {'text': 'White', 'score': 1},
        {'text': 'Black', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Dog', 'score': 3},
        {'text': 'Elephant', 'score': 7},
        {'text': 'Tiger', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your favourite tutor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Andrew', 'score': 7},
        {'text': 'Dimitri', 'score': 1},
        {'text': 'Chris', 'score': 3},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('No more _questions!');
    } else {
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(home: Text('Hello!'));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App\'s title'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
