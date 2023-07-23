import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController userNameController;
  late TextEditingController passwordController;

  final String signInButton = 'Sign In';

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MtSignInTextField(
              inputController: userNameController,
            ),
            MtSignInTextField(
              inputController: passwordController,
            ),
            MtSignInButton(buttonCallback: signInCallback, label: signInButton),
          ],
        ),
      ),
    );
  }

  void signInCallback() {
    String userName = userNameController.text;
    String password = passwordController.text;

    if (userName.isEmpty || password.length < 5) return;

    // run auth
  }
}
