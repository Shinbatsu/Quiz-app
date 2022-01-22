import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  final _questions = const [
    {
      'questionText': "Which is wrong?",
      'answers': [
        {'text': '\$\=', 'score': 0},
        {'text': '^^=', 'score': 1},
        {'text': '&=', 'score': 0},
        {'text': '/=', 'score': 0},
      ]
    },
    {
      'questionText': "let a=10, b=20; ",
      'answers': [
        {'text': 'Unexpected Token', 'score': 0},
        {'text': 'Valid', 'score': 1},
      ]
    },
    {
      'questionText': "which word doesn't exist in JS?",
      'answers': [
        {'text': 'remove', 'score': 1},
        {'text': 'delete', 'score': 0},
        {'text': 'break', 'score': 0},
        {'text': 'while', 'score': 0},
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
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Simple Quiz"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
