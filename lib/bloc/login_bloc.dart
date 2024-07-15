import 'package:bloc/bloc.dart';
import 'package:clean_architecture_with_bloc_state/utils/enums.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginStates> {
  LoginBloc() : super(const LoginStates()) {
    on<EmailChange>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
  }
  void _onEmailChange(EmailChange event, Emitter<LoginStates> emit) {
    emit(
      state.copyWith(email: event.email),
    );
  }

  void _onPasswordChange(PasswordChange event, Emitter<LoginStates> emit) {
    emit(
      state.copyWith(password: event.password),
    );
  }
}
