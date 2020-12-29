import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  //or void main () => runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = ['Favorite color?', 'favorite animal?', 'Faforite test?'];
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text("answer 1"), onPressed: answerQuestion),
            RaisedButton(child: Text("answer 2"), onPressed: answerQuestion),
            RaisedButton(child: Text("answer 3"), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
