import 'package:flutter/material.dart';

class MtSignInButton extends StatelessWidget {
  const MtSignInButton(
      {super.key,
      this.buttonTextSize,
      required this.buttonCallback,
      required this.label});

  final String label;
  final VoidCallback buttonCallback;
  final double? buttonTextSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonCallback,
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(
          TextStyle(fontSize: buttonTextSize ?? 20),
        ),
      ),
      child: Text(label),
    );
  }
}
