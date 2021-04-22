import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 4) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable!';
    } else if (resultScore <= 21) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz'),
            style: TextButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: resetQuizHandler,
          )
        ],
      ),
    );
  }
}
