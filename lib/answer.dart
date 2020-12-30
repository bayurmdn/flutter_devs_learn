import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionHandler;
  final String answerText;

  Answer(this.questionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.pinkAccent,
          child: Text(answerText),
          onPressed: questionHandler),
    );
  }
}
