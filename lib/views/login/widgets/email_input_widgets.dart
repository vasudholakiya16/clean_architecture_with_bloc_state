import 'package:flutter/material.dart';

class EmailInputWidget extends StatelessWidget {
  final FocusNode emailFocusNode;
  const EmailInputWidget({super.key, required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: emailFocusNode,
      decoration: const InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email is required';
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
