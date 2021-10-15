// Data Provider
import 'dart:io';

import 'package:atividade_3/models/usuario.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseLocalServer {
  static DatabaseLocalServer helper = DatabaseLocalServer._createInstance();

  DatabaseLocalServer._createInstance();

  static Database _database;

  String noteTable = "usuarios";
  String colUsuario = "usuario";
  String colSenha = "senha";
  String colId = "id";
  String colEmail = "email";

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "usuarios.db";

    return openDatabase(path, version: 1, onCreate: _createDb);
  }

  _createDb(Database db, int newVersion) {
    db.execute("""
       CREATE TABLE $noteTable (
           $colId INTEGER PRIMARY KEY AUTOINCREMENT,
           $colUsuario TEXT,
           $colSenha TEXT,
           $colEmail TEXT
          );
    """);
  }

  Future<int> insertNote(Usuario usuario) async {
    Database db = await this.database;
    return db.insert(noteTable, usuario.toMap());
  }

  Future<List> getPassword(String usuario) async {
    Database db = await this.database;
    List<Map<String, Object>> noteMapList =
        await db.rawQuery("SELECT * FROM $noteTable;");
    List<Usuario> usuarioList = <Usuario>[];

    for (int i = 0; i < noteMapList.length; i++) {
      Usuario usuario = Usuario.fromMap(noteMapList[i]);

      usuarioList.add(usuario);
    }
    return usuarioList;
  }

  Future<int> deleteNote(int noteId) async {
    Database db = await this.database;

    int result = await db.rawDelete("""
        DELETE FROM $noteTable WHERE $colId = $noteId;
      """);
    return result;
  }

  Future<List<Usuario>> getUsuarios() async {
    Database db = await this.database;

    var resultado = await db.query(noteTable);

    List<Usuario> lista = resultado.isNotEmpty
        ? resultado.map((u) => Usuario.fromMap(u)).toList()
        : [];
    return lista;
  }
}
