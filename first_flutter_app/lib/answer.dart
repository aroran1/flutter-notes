import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // color: Colors.blue,
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: TextStyle(color: Colors.white),
        ),
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
