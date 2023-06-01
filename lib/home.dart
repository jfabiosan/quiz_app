import 'package:flutter/material.dart';
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
        Question('Dart é uima linguagem desenvolvida pelo Facebook', 0),
        Question('Dart é uima linguagem desenvolvida pelo Google', 1),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
      ),
      body: QuestionBox(_index, _questions, nextQuestion),
    );
  }
}
