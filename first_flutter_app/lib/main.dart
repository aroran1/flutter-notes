import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer choosen!');
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What\'s your favourite color?',
    //   'What\'s your favourite animal?',
    // ];
    // return MaterialApp(home: Text('Hello!'));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App\'s title'),
        ),
        body: Column(
          children: <Widget>[
            Text('This is question!'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed:
                  answerQuestion, // we are passing the name of the function as a pointer instead od the result of the function
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
