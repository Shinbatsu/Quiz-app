import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  String get resultPhrase {
    return "Your result $resultScore/3";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz!'), 
            onPressed: resetHandler,
            style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.indigo,
                    textStyle: const TextStyle(fontSize: 20),
                  ))
        ],
      ),
    );
  }
}
