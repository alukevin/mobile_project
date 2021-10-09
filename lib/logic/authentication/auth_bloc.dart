import 'package:atividade_3/data/local/local_database.dart';
import 'package:atividade_3/logic/authentication/auth_event.dart';
import 'package:atividade_3/logic/authentication/auth_state.dart';
import 'package:atividade_3/models/usuario.dart';
import 'package:bloc/bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(initialState) : super(initialState);
  List<Usuario> usuarios;
  DatabaseLocalServer db;
  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is LoginUser) {
      db.getPassword(event.username).then((lista) => {usuarios = lista});
      if (event.password == usuarios[0].senha) {
        yield Authenticated(nome: event.username);
      } else {
        yield Unauthenticated();
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
      Usuario u = Usuario(event.username, event.password, event.email);
      db.insertNote(u);
      yield CadastradoState();
    }
  }
}
