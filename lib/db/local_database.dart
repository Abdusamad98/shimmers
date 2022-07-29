import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class LocalDatabase {
  static final LocalDatabase getInstance = LocalDatabase._init();
  static Database? _database;

  factory LocalDatabase() {
    return getInstance;
  }

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await _initDB("contacts.db");
      return _database!;
    }
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
    const textType = "TEXT NOT NULL";
    const intType = "INTEGER DEFAULT 0";
    const boolType = 'BOOLEAN NOT NULL';
//TODO 2 Create table
    // await db.execute('''
    // CREATE TABLE $userTable (
    // ${CachedUsersFields.id} $idType,
    // ${CachedUsersFields.userName} $textType,
    // ${CachedUsersFields.age} $intType
    // )
    // ''');
  }

  LocalDatabase._init();

//-------------------------------------------Cached Contacts Table------------------------------------



}
