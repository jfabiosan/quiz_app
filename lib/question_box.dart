import 'package:flutter/material.dart';

class QuestionBox extends StatelessWidget {
  final dynamic _index;
  final dynamic _questions;
  final Function nextQuestion;

  const QuestionBox(this._index, this._questions, this.nextQuestion,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Selecione a afirmação correta',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: ElevatedButton(
                onPressed: () =>
                    nextQuestion(_questions[_index][_index][0].value),
                child: Text(_questions[_index][_index][0].question),
              ),
            )
          ],
        ),
        const Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'OU',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: ElevatedButton(
                onPressed: () =>
                    nextQuestion(_questions[_index][_index][1].value),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text(_questions[_index][_index][1].question),
              ),
            )
          ],
        ),
      ],
    );
  }
}
