import 'package:clean_architecture_with_bloc_state/bloc/login_bloc.dart';
import 'package:clean_architecture_with_bloc_state/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  final formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginStates>(
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
        if (state.postApiStatus == PostApiStatus.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.blue,
            ),
          );
        }

        if (state.postApiStatus == PostApiStatus.loading) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Loading...'),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginStates>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                if (state.password.length > 6) {
                  print('Please enter a password with more than 6 characters');
                  context.read<LoginBloc>().add(const LoginButtonPressed());
                }
              }
            },
            child: const Text('Login'),
          );
        },
      ),
    );
  }
}
