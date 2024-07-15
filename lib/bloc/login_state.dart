part of 'login_bloc.dart';

class LoginStates extends Equatable {
  const LoginStates({
    this.postApiStatus = PostApiStatus.initial,
    this.email = '',
    this.error = '',
    this.password = '',
  });
  final String email;
  final String password;
  final String error;
  final PostApiStatus postApiStatus;

  LoginStates copyWith({
    String? email,
    String? password,
  }) {
    return LoginStates(
      email: email ?? this.email,
      password: password ?? this.password,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [email, password, postApiStatus, error];
}
