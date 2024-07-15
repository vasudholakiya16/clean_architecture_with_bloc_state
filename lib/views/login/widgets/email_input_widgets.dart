import 'package:clean_architecture_with_bloc_state/bloc/login_bloc.dart';
import 'package:clean_architecture_with_bloc_state/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInputWidget extends StatelessWidget {
  final FocusNode emailFocusNode;
  const EmailInputWidget({super.key, required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
        buildWhen: (previous, current) => current.email != previous.email,
        builder: (context, state) {
          return TextFormField(
            keyboardType: TextInputType.emailAddress,
            focusNode: emailFocusNode,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              context.read<LoginBloc>().add(EmailChange(email: value));
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email is required';
              }
              if (!(Validation.emailValidator(value))) {
                return 'Please enter a valid email';
              }
              return null;
            },
            onFieldSubmitted: (value) {},
          );
        });
  }
}
