import 'package:flutter/material.dart';

class QuestionBox extends StatelessWidget {
  final dynamic _index;
  final dynamic _questions;

  const QuestionBox(this._index, this._questions, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Row(
          children: <Widget>[Text('Selecione a afirmação correta')],
        ),
        Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: null,
              child: Text(_questions[_index][_index][0].question),
            )
          ],
        ),
        const Row(
          children: <Widget>[Text('OU')],
        ),
        Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: null,
              child: Text(_questions[_index][_index][1].question),
            )
          ],
        ),
      ],
    );
  }
}
