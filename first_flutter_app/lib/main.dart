import 'package:flutter/material.dart';

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
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    // return MaterialApp(home: Text('Hello!'));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App\'s title'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[_questionIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed:
                  _answerQuestion, // we are passing the name of the function as a pointer instead od the result of the function
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
