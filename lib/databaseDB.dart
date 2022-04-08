import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class database {
  Future<Database> initalizeDB() async {
    final database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'usersdb1.db'),
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          'CREATE TABLE users(email TEXT, password TEXT)',
        );
      },
      version: 1,
    );
    return database;
  }
}
