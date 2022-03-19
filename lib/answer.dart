import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;


  Answer(this.selectHandler, this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      // Flutter2 부터는 ElevatedButton이 사용되지만 원래의 코드를 위해서 잠시 사용
      child:  RaisedButton(
        color: Colors.orangeAccent,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
