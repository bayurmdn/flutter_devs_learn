import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  //or void main () => runApp(MyApp());
}



class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1; 
    print(questionIndex);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('my first app'),),
      body: Column(
            children: [
              Text('the question'),
              RaisedButton(
                child: Text('answer1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('answer2'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('answer3'),
                onPressed: answerQuestion,
              ),
            
