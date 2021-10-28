import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    required this.onpress,
    required this.text,
    required this.color,
  });

  final void Function() onpress;
  final Color color;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpress,
      color: color,
      child: text,
    );
  }
}