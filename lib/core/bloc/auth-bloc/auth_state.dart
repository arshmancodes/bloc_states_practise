abstract class AuthState {}

class InitialAuthState extends AuthState {}

class LoggedInAuthState extends AuthState {
  String? username;
  String? password;

  LoggedInAuthState({this.username, this.password});
}

class LoggedOutAuthState extends AuthState {}
