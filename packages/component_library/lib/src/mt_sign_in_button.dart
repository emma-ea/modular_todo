import 'package:flutter/material.dart';

class MtSignInButton extends StatelessWidget {
  const MtSignInButton({super.key, required this.buttonCallback, required this.label});
  final String label;
  final VoidCallback buttonCallback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonCallback,
      child: Text(label),
    );
  }
}
