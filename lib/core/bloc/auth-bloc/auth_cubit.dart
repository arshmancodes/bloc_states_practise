import 'package:flutter_application_2/core/bloc/auth-bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  String? username;
  String? password;

  AuthCubit() : super(InitialAuthState());

  void login(String username, String password) {
    //Login and authenticate logic... await authRepo.login(username, password);
    emit(LoggedInAuthState(username: username, password: password));
  }

  void logout() {
    emit(LoggedOutAuthState());
  }
}
