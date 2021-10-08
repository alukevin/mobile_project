abstract class AuthEvent {}

class LoginScreen extends AuthEvent {}

class CadastroScreen extends AuthEvent {}

class CadastradoEvent extends AuthEvent {}

class HondaScreen extends AuthEvent {}

class CorollaScreen extends AuthEvent {}

class OnixScreen extends AuthEvent {}

class MerivaScreen extends AuthEvent {}

class LoginUser extends AuthEvent {
  String username;
  String password;

  LoginUser({this.username, this.password});
}

class LoginAnonymousUser extends AuthEvent {}

class Logout extends AuthEvent {}
