import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            print("Email and password Enter Successfully");
          }
        },
        child: const Text('Login'));
  }
}
