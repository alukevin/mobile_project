class Usuario {
  String _usuario;
  String _senha;
  String _email;
  int _id;

  Usuario() {
    _usuario = "";
    _senha = "";
    _email = "";
    _id = 0;
  }

  Usuario.fromMap(map) {
    this._usuario = map["usuario"];
    this._senha = map["senha"];
    this._email = map["email"];
    this._id = map["id"];
  }

  String get usuario => _usuario;
  String get senha => _senha;
  String get email => _email;
  int get id => _id;

  set usuario(String newUsuario) {
    if (newUsuario.length > 0) {
      this._usuario = newUsuario;
    }
  }

  set senha(String newSenha) {
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
