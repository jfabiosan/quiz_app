import 'package:flutter/material.dart';
import './result.dart';
import './question.dart';
import './question_box.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _questions = [
    {
      0: [
        Question('A seleção brasileira tem 5 titulos mundiais', 1),
        Question('A seleção brasileira tem 3 titulos mundiais', 0),
      ]
    },
    {
      1: [
        Question('Não conseguimos criar aplicativos com Flutter', 0),
        Question('Conseguimos criar aplicativos com Flutter', 1),
      ]
    },
    {
      2: [
        Question('O Brasil é composto por 26 estados e um DF', 1),
        Question('O Brasil é composto por 24 estados e um DF', 0),
      ]
    },
    {
      3: [
        Question('Dart é uma linguagem desenvolvida pelo Facebook', 0),
        Question('Dart é uma linguagem desenvolvida pelo Google', 1),
      ]
    },
  ];
  int result = 0;
  int _index = 0;

  void nextQuestion(int value) {
    setState(() {
      _index++;
      result = result + value;
    });
  }

  void reset() {
    setState(() {
      _index = 0;
      result = 0;
    });
  }

  String getMessage() {
    if (result < 2) {
      return 'Ooops... estude mais!';
    } else if (result < 3) {
      return 'Quase acertou tudo';
    }
    return 'Parabens... acertou tudo';
  }

  String _getTitle() {
    if (_index < 4) {
      return 'Question ${_index + 1}';
    } else {
      return 'Result';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(_getTitle()),
        ),
      ),
      body: _index < _questions.length
          ? QuestionBox(_index, _questions, nextQuestion)
          : Result(getMessage(), reset),
    );
  }
}
