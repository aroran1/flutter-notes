import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // creating a map
    const questions = [
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
    // return MaterialApp(home: Text('Hello!'));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App\'s title'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                // Note: map doesn't alter the original questions list instead to makes copy of it and retuns a new list
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
