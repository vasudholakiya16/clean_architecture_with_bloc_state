import 'package:clean_architecture_with_bloc_state/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInputWidgets extends StatelessWidget {
  final FocusNode passwordFocusNode;
  const PasswordInputWidgets({super.key, required this.passwordFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
        buildWhen: (previous, current) => current.password != previous.password,
        builder: (context, state) {
          return TextFormField(
            keyboardType: TextInputType.visiblePassword,
            focusNode: passwordFocusNode,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              context.read<LoginBloc>().add(PasswordChange(password: value));
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Password is required';
              }
              if (value.length < 6) {
                return 'Password must be more than 6 characters';
              }
              return null;
            },
            onFieldSubmitted: (value) {},
          );
        });
  }
}
