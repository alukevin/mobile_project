class Usuario {
  String _usuario;
  String _senha;
  String _email;

  Usuario(String username, String password, String email) {
    _usuario = "";
    _senha = "";
    _email = "";
  }

  Usuario.fromMap(map) {
    this._usuario = map["usuario"];
    this._senha = map["senha"];
    this._email = map["email"];
  }

  String get usuario => _usuario;
  String get email => _email;
  String get senha => _senha;

  set usuario(String newUsuario) {
    if (newUsuario.length > 0) {
      this._usuario = newUsuario;
    }
  }

  set description(String newSenha) {
    if (newSenha.length > 0) {
      this._senha = newSenha;
    }
  }

  set email(String newEmail) {
    if (newEmail.length > 0) {
      this._email = newEmail;
    }
  }

  toMap() {
    var map = Map<String, dynamic>();
    map["usuario"] = _usuario;
    map["senha"] = _senha;
    map["email"] = _email;
    return map;
  }
}
