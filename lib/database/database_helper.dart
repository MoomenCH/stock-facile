import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
static final DatabaseHelper instance = DatabaseHelper._init();

static Database? _database;

DatabaseHelper._init();

Future<Database> get database async {
if (_database != null) return _database!;

_database = await _initDB('stockfacile.db');

return _database!;

}

Future<Database> _initDB(String filePath) async {
final dbPath = await getDatabasesPath();
final path = join(dbPath, filePath);
return await openDatabase(
  path,
  version: 1,
  onCreate: _createDB,
);
}

Future _createDB(Database db, int version) async {
await db.execute('''
CREATE TABLE produits (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom TEXT NOT NULL,
description TEXT,
prix REAL NOT NULL,
quantite INTEGER NOT NULL
)
''');
print("Table produits créée !");


}
}
