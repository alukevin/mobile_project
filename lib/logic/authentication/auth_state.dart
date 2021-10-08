abstract class AuthState {}

class Unauthenticated extends AuthState {}

class Authenticated extends AuthState {
  String nome;
  Authenticated({this.nome});
}

class Corolla extends AuthState {}

class Honda extends AuthState {}

class Meriva extends AuthState {}

class Onix extends AuthState {}

class Login extends AuthState {}

class Cadastro extends AuthState {}

class CadastradoState extends AuthState {}
