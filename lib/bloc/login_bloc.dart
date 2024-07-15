import 'package:bloc/bloc.dart';
import 'package:clean_architecture_with_bloc_state/repository/auth/loin_repository.dart';
import 'package:clean_architecture_with_bloc_state/utils/enums.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginStates> {
  LoginRepository loginRepository = LoginRepository();
  LoginBloc() : super(const LoginStates()) {
    on<EmailChange>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }
  void _onEmailChange(EmailChange event, Emitter<LoginStates> emit) {
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _onPasswordChange(PasswordChange event, Emitter<LoginStates> emit) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  void _onLoginButtonPressed(
      LoginButtonPressed event, Emitter<LoginStates> emit) async {
    // Map data = {
    //   "email": "eve.holt@reqres.in",
    //   "password": "cityslicka",
    // };
    Map data = {
      "email": state.email,
      "password": state.password,
    };
    emit(
      state.copyWith(postApiStatus: PostApiStatus.loading),
    );
    await loginRepository.loginApi(data).then((value) {
      if (value.error.isNotEmpty) {
        emit(
          state.copyWith(
              message: 'Login Successful',
              postApiStatus: PostApiStatus.success),
        );
      } else {
        emit(
          state.copyWith(
            message: value.error.toString(),
            postApiStatus: PostApiStatus.error,
          ),
        );
      }
    }).onError((error, stackTrace) {
      emit(
        state.copyWith(
          message: error.toString(),
          postApiStatus: PostApiStatus.error,
        ),
      );
    });
  }
}
