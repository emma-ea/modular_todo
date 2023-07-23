import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';
import 'package:user_repository/user_repository.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  late UserRepository userRepository;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    userRepository = UserRepository(Auth());
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
                inputHint: AppStrings.signInEmail,
                inputController: emailController,
              ),
              const SizedBox(height: 10.0),
              MtSignInTextField(
                inputHint: AppStrings.signInPassword,
                isPassword: true,
                inputController: passwordController,
              ),
              MtSignInButton(
                  buttonCallback: signInCallback,
                  label: AppStrings.signInButton),
            ],
          ),
        ),
      ),
    );
  }

  void signInCallback() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isEmpty || password.length < 5) return;

    // run auth
    userRepository.signIn(email, password);
  }
}
