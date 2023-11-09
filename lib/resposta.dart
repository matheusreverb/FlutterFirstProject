import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String textButton;
  final void Function() onPressed;

  Resposta(this.textButton, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Center(
        heightFactor: double.tryParse('1.5'),
        child: SizedBox(
          width: double.tryParse('200'),
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(textButton),
          ),
        ));
  }
}
