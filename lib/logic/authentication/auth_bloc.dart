import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:atividade_3/logic/authentication/auth_state.dart';
import 'package:bloc/bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(initialState) : super(initialState);
  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is LoginUser) {
      if (event.password == "senha") {
        yield Authenticated(nome: event.username);
      }
    } else if (event is LoginAnonymousUser) {
      yield Authenticated();
    } else if (event is Logout) {
      yield Unauthenticated();
    } else if (event is LoginScreen) {
      yield Login();
    } else if (event is CadastroScreen) {
      yield Cadastro();
    } else if (event is CadastradoEvent) {
      yield CadastradoState();
    } 
  }
}
