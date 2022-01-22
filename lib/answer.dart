import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, String this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.white,onPrimary: Colors.blue),
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
