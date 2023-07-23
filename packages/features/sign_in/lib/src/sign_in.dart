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

  double width7th() => MediaQuery.of(context).size.width * .9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: width7th(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MtSignInTextField(
                inputHint: 'Username',
                inputController: userNameController,
              ),
              const SizedBox(height: 10.0),
              MtSignInTextField(
                inputHint: 'Password',
                isPassword: true,
                inputController: passwordController,
              ),
              MtSignInButton(
                  buttonCallback: signInCallback, label: signInButton),
            ],
          ),
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
