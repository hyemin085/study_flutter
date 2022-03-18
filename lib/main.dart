import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());
void answerQuestion() {
  print('Answer chosen!');
}

class MyApp extends StatelessWidget {
  @override //데코레이터
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
            // Flutter2 부터는 ElevatedButton이 사용되지만 원래의 코드를 위해서 잠시 사용
          ],
        ),
      ),
    );
  }
}
