import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final을 붙여주면 생성자에서 초기화 후에 이 값이 절대 변경되지 않을 것임을 Dart에게 알려줌.
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
    );
  }
}
