import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection{
  setDatabase() async{
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "db_todo");
    var database =  await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);
    return database;
  }
  _onCreatingDatabase(Database db, int version) async{
    await db.execute(
      "Create Table categories(id INTEGER PRIMARY KEY, name TEXT,description TEXT)");
    await db.execute(
    "Create Table todos(id INTEGER PRIMARY KEY, title TEXT,description TEXT, category TEXT,todoDate TEXT isFinished INTEGER) ");
  }
}