import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Wolf', 'score': 10},
        {'text': 'Tiger', 'score': 6},
        {'text': 'cat', 'score': 3},
        {'text': 'dog', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite hobby?',
      'answers': [
        {'text': 'game', 'score': 10},
        {'text': 'exercise', 'score': 1},
        {'text': 'cook', 'score': 3},
        {'text': 'book', 'score': 6},
      ],
    },
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
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override //데코레이터
  Widget build(BuildContext context) {
    var dummy = ['Hello'];
    dummy.add('Hyemgu');
    print(dummy);

    dummy = [];
    //questions = []; 위 questions을 const로 지정했기 때문에 작동하지 않는다 var로 해놓을 경우 가능하다.
    //초기값이 변경되지 않을경우는 final로 지정함.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
