import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EmailInputWidget(emailFocusNode: emailFocusNode),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              PasswordInputWidgets(passwordFocusNode: passwordFocusNode),
              LoginButton(
                formKey: _formKey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
