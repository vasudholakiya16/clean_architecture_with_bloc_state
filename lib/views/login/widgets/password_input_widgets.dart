import 'package:flutter/material.dart';

class PasswordInputWidgets extends StatelessWidget {
  final FocusNode passwordFocusNode;
  const PasswordInputWidgets({super.key, required this.passwordFocusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      focusNode: passwordFocusNode,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return 'Password is required';
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
