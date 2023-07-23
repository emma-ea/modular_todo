import 'package:flutter/material.dart';

class MtSignInTextField extends StatelessWidget {
  const MtSignInTextField({super.key, required this.inputController});

  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.0),
      ),
      child: TextField(
        controller: inputController,
      ),
    );
  }
}
