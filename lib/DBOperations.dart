import 'package:danceapp/Userdata.dart';
import 'package:danceapp/databaseDB.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBOperations {
  final Database _database;

  DBOperations(this._database);

  Future<void> insertUser(User user) async {
    // Get a reference to the database.

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    print(user.toMap());
    await _database.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<User>> retrieveUsers() async {
    // Get a reference to the database.

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await _database.query('users');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return User(
        email: maps[i]['email'],
        password: maps[i]['password'],
      );
    });
  }

  Future<void> deleteUser(int id) async {
    // Get a reference to the database.

    // Remove the Dog from the database.
    await _database.delete(
      'users',
      // Use a `where` clause to delete a specific dog.
      where: 'id = 0',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }
}
