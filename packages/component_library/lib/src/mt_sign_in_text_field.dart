import 'package:flutter/material.dart';

class MtSignInTextField extends StatelessWidget {
  const MtSignInTextField(
      {super.key,
      this.inputHint = '',
      this.isPassword = false,
      required this.inputController});

  final TextEditingController inputController;
  final bool isPassword;
  final String inputHint;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: inputHint,
          focusedBorder: InputBorder.none,
        ),
        obscureText: isPassword,
        controller: inputController,
      ),
    );
  }
}
