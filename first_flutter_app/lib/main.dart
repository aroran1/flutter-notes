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
      'answers': ['Red', 'Yellow', 'White', 'Black']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Rabbit', 'Dog', 'Elephant', 'Tiger']
    },
    {
      'questionText': 'What\'s your favourite tutor?',
      'answers': ['Max', 'Andrew', 'Dimitri', 'Chris']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
