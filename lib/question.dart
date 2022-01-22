import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: 100.0,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child:Text(
    questionText,
    style:TextStyle(fontSize: 28),
    textAlign: TextAlign.center,));
  }
}
