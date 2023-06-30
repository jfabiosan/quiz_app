import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String message;
  final Function reset;

  const Result(this.message, this.reset, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                message,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => reset(),
              child: const Text('Voltar'),
            ),
          ],
        ),
      ],
    );
  }
}
