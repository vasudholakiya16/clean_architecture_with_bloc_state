part of 'login_bloc.dart';

class LoginStates extends Equatable {
  const LoginStates({
    this.postApiStatus = PostApiStatus.initial,
    this.email = '',
    this.message = '',
    this.password = '',
  });
  final String email;
  final String password;
  final String message;
  final PostApiStatus postApiStatus;

  LoginStates copyWith({
    String? email,
    String? password,
    String? message,
    Object? postApiStatus,
  }) {
    return LoginStates(
      email: email ?? this.email,
      password: password ?? this.password,
      postApiStatus: postApiStatus as PostApiStatus? ?? this.postApiStatus,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [email, password, postApiStatus, message];
}
